import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/User/UsersPropertis.dart';
import 'UsersScreen.dart';
class Shipping extends StatefulWidget{
  Users user2 = new Users("", "", "", "");
  Shipping(this.user2);
  @override
  State<StatefulWidget> createState() {
    return ShippingState();
  }
}
class ShippingState extends State<Shipping>{
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar( actions: [
          IconButton(
            icon: Icon(Icons.arrow_back, size: 35),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],title:Text("GÖNDERİM",style:TextStyle(fontSize:35.0 ) ,),backgroundColor:Colors.green,),
        body:Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Container(
              margin:EdgeInsets.only(left:40),
                child:Padding(padding:EdgeInsets.all(0.8),child:Text("SAYIN",style:TextStyle(
                    fontSize:40,
                    letterSpacing:0.5,
                    color:(Colors.green)
                ) ,)
                )
            ),
        Padding(padding:EdgeInsets.only(left:60),child:Text(widget.user2.name,style:TextStyle(
            fontSize:20,
            letterSpacing:0.5,
            color:(Colors.green)
        ) ,)
        ),

        Padding(
              padding:EdgeInsets.only(left:60) ,
              child: Text(widget.user2.surname,style:TextStyle(
                  fontSize:20,
                  letterSpacing:0.5,
                  color:(Colors.green)
              ) ,),
            ),


            Padding(padding:EdgeInsets.only(left:60),
              child:Text("İŞLEMİNİZ GERÇEKLEŞTİRİLDİ",style:TextStyle(
              fontSize:20,
              letterSpacing:0.5,
              color:(Colors.green),
            ) ,) ,

      ),
            Container(
              margin:EdgeInsets.only(left:80,top:90),
                height: 100,
                width: 200,
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(
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
                        MaterialPageRoute(builder: (context) =>U()),
                      );
                    }))
   ] ))
    );}

}