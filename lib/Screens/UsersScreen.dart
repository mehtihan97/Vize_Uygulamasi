import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/User/UsersPropertis.dart';
import 'AppleTree.dart';
import 'UsersManager.dart';

class U extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UState();
  }
}
class UState extends State<U> {
  List<Users> userss =[
    Users("Muhammed", "Bayaroğulları", "kk", "vv",),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                actions: [
                  IconButton(
                    icon: Icon(Icons.water_damage, size: 35),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ATree()));
                    },
                  ),
                ],
              backgroundColor:Colors.green ,
                title: Text("KULLANICILAR ",
                  style:TextStyle(fontSize:30),

            )),
            body: Column(children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      itemCount:userss.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text("SAYIN" +
                              " " +
                              userss[index].name +
                              " " +
                              userss[index].surname),
                          subtitle: Text("KARGONUZ YOLA ÇIKTI"),
                          leading: CircleAvatar(
                            backgroundImage:
                            NetworkImage("https://cdn.pixabay.com/photo/2017/03/28/05/09/truck-2181037_960_720.png")
                          ),
                        );
                      })),
              Row(children:[
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 7,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 15.0),
                            Text("                            KAYIT OL",style:TextStyle(fontSize:20) ,),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context) => user(userss)));
                        },
                      )),

             ], )
            ])));
  }
}
