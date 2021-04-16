import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/User/UsersPropertis.dart';
import 'UsersScreen.dart';

class Shipping extends StatefulWidget {
  Users user2 = new Users("", "", "", "");
  Shipping(this.user2);
  @override
  State<StatefulWidget> createState() {
    return ShippingState();
  }
}

class ShippingState extends State<Shipping> {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 35),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
              title: Text(
                "GÖNDERİM",
                style: TextStyle(fontSize: 35.0),
              ),
              backgroundColor: Colors.green,
            ),
            body:
                Column( mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                  Flexible(
                    fit:FlexFit.loose,
                   flex:2,
                  child:Text(
                        "SAYIN",
                        style: TextStyle(
                          fontSize:35,
                            color: (Colors.green)),
                      )),
              Flexible(
                 fit:FlexFit.loose,
                 flex:3,
                child: Text(
                      widget.user2.name,
                      style: TextStyle(
                        fontSize:35,
                          color: (Colors.green)),
                    )),

             Flexible(
               fit:FlexFit.loose,
               flex:3,
                child:
                     Text(
                      widget.user2.surname,
                      style: TextStyle(
                          fontSize:35,
                          letterSpacing: 0.5,
                          color: (Colors.green)),
                    ),
                  ),
              Flexible(
                fit:FlexFit.loose,
                flex:2,
                  child: Text(
                    "İŞLEMİNİZ GERÇEKLEŞTİRİLDİ",
                    style: TextStyle(
                      fontSize:25,
                      letterSpacing: 0.5,
                      color: (Colors.green),
                    ),
                  ),
                ),
              Container(
                  width:MediaQuery.of(context).size.height ,
                  height:MediaQuery.of(context).size.height *0.1,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text(
                        "SİPARİŞ DETAY",
                        style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.5,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => U()),
                        );
                      }))
            ])));
  }
}
