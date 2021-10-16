import 'package:flutter/material.dart';
import 'package:onboardsc/main.dart';

class VenusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff420420),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/planet-logo.jpg',
              fit: BoxFit.cover,
              width: 50,
              height: 50,

            ),
            Container(
              padding: EdgeInsets.all(10),
              child: const Text('Planet Platform',
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
            UserAccountsDrawerHeader(accountName: Text("Dinçer KIZILDERE",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),),
              accountEmail: Text("wtech@platform.com", style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.normal),),
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
                            "https://media.giphy.com/media/l0MYB89UFsVqLY5oc/giphy.gif"),
                        //NetworkImage
                        radius: 100,
                      ), //CircleAvatar
                    ), //CirclAvatar
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    Text(
                      'VENUS',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.green[900],
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    RichText(
                        maxLines: 5,
                        text: const TextSpan(
                          text: "The second planet from the sun, Venus is Earth's twin in size. Radar images beneath its atmosphere reveal that its surface has various mountains and volcanoes. But beyond that, the two planets couldn't be more different. Because of its thick, toxic atmosphere that's made of sulfuric acid clouds, Venus is an extreme example of the greenhouse effect. It's scorching-hot, even hotter than Mercury. The average temperature on Venus' surface is 900 F (465 C). At 92 bar, the pressure at the surface would crush and kill you. And oddly, Venus spins slowly from east to west, the opposite direction of most of the other planets.",
                          style: TextStyle(fontSize: 22, letterSpacing: 1,),

                        )

                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    SizedBox(
                      width: 90,
                      child:
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context, 'Pressed Back.');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Row(
                                    children: const [
                                      Text('Back'),
                                      Icon(Icons.arrow_back),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
}