import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/Product/Products.dart';
import 'package:vize_uygulamasi/Screens/BasketManager.dart';
import 'package:vize_uygulamasi/Screens/HomeScreen.dart';
import 'package:vize_uygulamasi/Screens/LemonTree.dart';
import 'AppleDescription.dart';

class ATree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ATreeState();
  }
}
class _ATreeState extends State {
  Product product1=new Product.List("ELMA",1,"https://cdn.pixabay.com/photo/2016/07/24/23/51/apple-1539589_960_720.jpg");
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80,
              backgroundColor: (Colors.green),
              title: Text(
                "ELMA FİDANI",
                style: TextStyle(fontSize:35, letterSpacing:0.5),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.description, size:35),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => apple()));
                  },
                ),
              ],
            ),
            body: SafeArea(
              top:true,
              bottom:true,
              left:true,
              right:true,
              minimum:EdgeInsets.all(0.8) ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment:Alignment.center ,
                    child: Container(
                      width:double.infinity,
                      height:MediaQuery.of(context).size.height*0.5 ,
                      child: Image(
                          image:AssetImage (
                              "assets/images/apple-693971_1280.jpg")),
                    ),
                  ),
                  Row(
                    children: [
                             Flexible(
                                fit:FlexFit.loose,
                                flex: 2,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.yellow,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.navigate_before),
                                      SizedBox(width: 5.0),
                                      Text("GERİ"),
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  },
                                )),

                          Flexible(
                                fit: FlexFit.loose,
                                flex: 3,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      SizedBox(width:5.0),
                                      Text("SEPETE EKLE"),
                                    ],
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Basket(product1)));
                                  },
                                )),


                             Flexible(
                              fit: FlexFit.loose,
                              flex:2,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.navigate_next),
                                    SizedBox(width: 5.0),
                                    Text("İLERİ"),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LTree()));
                                },
                              )),
                          ],
                      ),
        ],
                  )
            )
              ),
            );
  }
}
