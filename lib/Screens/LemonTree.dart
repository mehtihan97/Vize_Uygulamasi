import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/Product/Products.dart';
import 'package:vize_uygulamasi/Screens/AppleTree.dart';
import 'CherryTree.dart';
import 'LemonDescription.dart';
import 'package:vize_uygulamasi/Screens/BasketManager.dart';

class LTree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LTreeState();
  }
}

class _LTreeState extends State {
  Product product2 = new Product.List("LİMON", 1,
      "https://cdn.pixabay.com/photo/2021/01/30/12/01/lemon-5963612_960_720.jpg");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80,
              backgroundColor: (Colors.green),
              title: Text(
                "LİMON FİDANI",
                style: TextStyle(fontSize: 35, letterSpacing: 0.5),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.description, size: 35),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lemon()));
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
                          "https://cdn.pixabay.com/photo/2016/01/02/01/49/lemon-1117565_960_720.jpg")),
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
                                    builder: (context) => ATree()));
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Basket(product2)));
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
                              Text("İLERİ "),
                              Icon(Icons.navigate_next),
                              SizedBox(width: 5.0),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CTree()));
                          },
                        )),
                  ],
                )
              ],
            )));
  }
}
