import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/Screens/About.dart';
import 'AppleTree.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "           WELCOME",
                style: TextStyle(letterSpacing: 1.5, fontSize: 35),
              ),
              backgroundColor: Colors.green,
                actions: [
            IconButton(
            icon: Icon(Icons.description, size: 35),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutC()));
          },
        ),
      ]
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: CircleAvatar(
                  radius: 200,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/03/21/10/26/environmental-protection-683437_960_720.jpg"),
                )),
                Container(
                    height: 100,
                    width: 200,
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                        child: Text(
                          "LOGİN",
                          style: TextStyle(
                              fontSize: 20.0,
                              letterSpacing: 1.5,
                              color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ATree()),
                          );
                        }))
              ],
            )));
  }
}
