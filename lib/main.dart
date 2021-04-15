import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/Screens/HomeScreen.dart';
void main() {runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:LoginPage()
    );
  }

}






