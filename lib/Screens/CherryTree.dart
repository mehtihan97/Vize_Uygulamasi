import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/Product/Products.dart';
import 'package:vize_uygulamasi/Screens/CherryDescription.dart';
import 'package:vize_uygulamasi/Screens/LemonTree.dart';
import 'package:vize_uygulamasi/Screens/BasketManager.dart';

import 'HomeScreen.dart';

class CTree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CTreeState();
  }
}

class _CTreeState extends State {
  Product product3 = new Product.List("KİRAZ", 1,
      "https://cdn.pixabay.com/photo/2015/01/13/13/18/cherries-598170_960_720.jpg");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80,
              backgroundColor: (Colors.green),
              title: Text(
                "KiRAZ FİDANI",
                style: TextStyle(fontSize: 35, letterSpacing: 0.5),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.description, size: 35),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cheryy()));
                  },
                ),
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 600,
                  child: Image(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/08/15/14/41/cherries-1595610_960_720.jpg")),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        fit: FlexFit.tight,
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
                                    builder: (context) =>LTree()));
                          },
                        )),
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 3,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.add),
                              SizedBox(width: 5.0),
                              Text("SEPETE EKLE"),
                            ],
                          ),
                          onPressed: () {
                            print:
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                          builder: (context) => Basket(product3)));
                                },
                        )),
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 2,
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
                                    builder: (context) => LoginPage()));
                          },
                        )),
                  ],
                )
              ],
            )));
  }
}
