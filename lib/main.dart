import 'package:flutter/material.dart';
import 'package:onboardsc/venus_page.dart';

void main() => runApp(OnBoardSc());

class OnBoardSc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  'WtechBoard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: WtechHome(title: 'WtechBoard'),
    );
  }
}

class WtechHome extends StatelessWidget {
  String title;

  WtechHome({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff420420),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/planet-logo.jpg',
            fit: BoxFit.cover,
              width: 50,
              height: 50,

            ),
            Container(
              padding: EdgeInsets.all(10),
                child:  const Text('Planet Platform',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(accountName: Text("Dinçer KIZILDERE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              accountEmail:Text( "wtech@platform.com",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/gezegenler.jpg'),
                    fit: BoxFit.cover
                ),

              ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Planets'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Center(
        /** Card Widget **/
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Color(0xff00a56c),
          child: SizedBox(
            // width: double.infinity,
            // height: double.infinity,
            // height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(1),
                child: Column(
                  children: [
                CircleAvatar(
                backgroundColor: Colors.green[500],
                  radius: 108,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media0.giphy.com/media/mf8UbIDew7e8g/giphy.gif"), //NetworkImage
                    radius: 100,
                  ), //CircleAvatar
                ), //CirclAvatar
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'EARTH',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue[500],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  maxLines: 5,
                  text: const TextSpan(
                    text:"The first planet from the sun, Earth is a waterworld, with two-thirds of the planet covered by ocean. It's the only world known to harbor life. Earth's atmosphere is rich in nitrogen and oxygen. Earth's surface rotates about its axis at 1,532 feet per second (467 meters per second) — slightly more than 1,000 mph (1,600 kph) — at the equator. The planet zips around the sun at more than 18 miles per second (29 km per second).",
                    style: TextStyle(fontSize: 22,letterSpacing: 1,),

                  )

                ),
            const SizedBox(
                height: 10,
            ),
            SizedBox(
                width: 90,
                child: ElevatedButton(
                  onPressed: () {
                   _navigateAndDisplaySelection(context);
                  } ,

                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: const [
                        Text('Next'),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
            )
            ],
          ),
              ),
        ),
      ),
    ),

    );
  }
  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  VenusPage()),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result'),backgroundColor: Colors.lightBlue,));
  }
}



