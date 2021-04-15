import 'package:flutter/material.dart';
import 'package:vize_uygulamasi/Product/Products.dart';
import 'package:vize_uygulamasi/Screens/AppleTree.dart';
class apple extends StatelessWidget{
  Product product1 =new Product(
      "ELMA AĞACI",
      "Elma ılıman, özellikle soğuk ılıman iklim bitkisidir. Akdeniz Bölgesinde 800 m.'den yukarı yerlerde yetişir. Yüksek ışık yoğunluğu elmada çok iyi renk oluşumunu sağlar. Elma ağacı düşük sıcaklıkların olduğu sert kışlara dayanıklı olmasına rağmen , yüksek yaz sıcağından da hoşlanmaz."
      ,1);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor:(Colors.green) ,
        body:Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child:Text(product1.name,style:TextStyle(
                  fontSize:50,
                  letterSpacing:0.5,
                  color:(Colors.white)
                ) ,)

            ),
            Container(
              margin:EdgeInsets.only(left:7 ) ,
                child:Text(product1.description,style:TextStyle(
                  fontSize:30,
                  letterSpacing:0.5,
                  color:(Colors.white)
                ) ,)
            ),
            Container(
              child:Text("ÜCRET ="+product1.price.toString()+" "+"YTL",style:TextStyle(
                fontSize:50,
                letterSpacing:0.5,
                color:(Colors.white),
              ) ,) ,

            ),
            ElevatedButton( child:Text("Geri",style:TextStyle(color:Colors.black,fontSize:20) ,),
              style:ElevatedButton.styleFrom(
              primary: Colors.yellowAccent,
            ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context)=>ATree())
                );
              },
            )

          ],
        )
        )
    );
  }

}