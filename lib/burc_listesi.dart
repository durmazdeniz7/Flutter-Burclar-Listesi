import 'package:flutter/material.dart';
import 'package:flutter_burclar_listesi/burc_item.dart';
import 'package:flutter_burclar_listesi/data/strings.dart';
import 'package:flutter_burclar_listesi/model/burcmodel.dart';

class BurcListesi extends StatelessWidget {
late List<Burc> tumBurclar;

   BurcListesi(){
     tumBurclar=veriKaynaginiHazirla( );
     print(tumBurclar);
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:const Text(Strings.APP_NAME),
    ),
    body: ListView.builder(itemBuilder: (BuildContext context,int index){
      return BurcItem(burc: tumBurclar[index],);
    },itemCount: tumBurclar.length,),
    );
  }
  List<Burc> veriKaynaginiHazirla(){
    List<Burc> gecici=[];
    for (var i = 0; i < 12; i++) {
      var burcAdi=Strings.BURC_ADLARI[i];
      var burcTarihi=Strings.BURC_TARIHLERI[i];
      var burcdetay=Strings.BURC_GENEL_OZELLIKLERI[i];
      var kucukResim="images/${Strings.BURC_ADLARI[i].toLowerCase()+(i+1).toString()}.png";
      var buyukResim="images/${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i+1}.png";


      Burc eklenecekBurc=Burc(
        burcAdi,
        burcTarihi,
        burcdetay,
        kucukResim,
        buyukResim

      );
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}