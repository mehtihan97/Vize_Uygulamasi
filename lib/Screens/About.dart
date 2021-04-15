import 'package:flutter/material.dart';

class AboutC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(actions: [
              IconButton(
                icon: Icon(Icons.arrow_back, size: 35),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
              backgroundColor: Colors.green,
              title: Text("HAKKINDA", style: TextStyle(fontSize: 35)),),
            body: Center(child: Text(
                "Bu uygulama DR.ÖĞRETİM ÜYESİ AHMET CEVAHİR ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301008 numaralı Muhammed Nehdihan Bayaroğulları tarafından 16 Nisan 2021 günü yapılmıştır. ",style:TextStyle(
              fontSize:25,letterSpacing: 0.5
            ),),))
    );
  }
}