import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/Screens/HomeScreen.dart';
import 'package:vize_uygulamasi/Screens/Shipping_information.dart';
import 'package:vize_uygulamasi/User/UsersPropertis.dart';

class user extends StatefulWidget {
  List<Users> u2;
  user(this.u2);
  @override
  State<StatefulWidget> createState() {
    return userState();
  }
}

class userState extends State<user> {
  var formkey = GlobalKey<FormState>();
  Users user = new Users("", "", "", "");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.home, size: 35),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>LoginPage()));
              },
            ),
          ],
          title: Text("Bilgileri Giriniz..!",style:TextStyle(fontSize:35)),backgroundColor:Colors.green),
      body: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                buildNameField(),
                buildSurNameField(),
                buildTelField(),
                buildAdressField(),
                buildSubbitButton(),
              ],
            ),
          )),
    ));
  }

  Widget buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "ADI", hintText: "Muhammed"),
      onSaved: (String value) {
        user.name = value;
      },
    );
  }

  Widget buildSurNameField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: "SOYADI", hintText: "Bayaroğulları"),
      onSaved: (String value) {
        user.surname = value;
      },
    );
  }

  Widget buildTelField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Tel NO", hintText: "5555555555"),
      onSaved: (String value) {
        user.telNo = value;
      },
    );
  }

  Widget buildAdressField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: "Adres", hintText: "Saray mah.Emek sok."),
      onSaved: (String value) {
        user.Adress = value;
      },
    );
  }

  Widget buildSubbitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      ),
      child: Text("GÖNDER"),
      onPressed: () {
        formkey.currentState.save();
        widget.u2.add(user);
        Navigator.push(context,MaterialPageRoute(builder:(context)=>Shipping(user)));
      },
    );
  }
}
