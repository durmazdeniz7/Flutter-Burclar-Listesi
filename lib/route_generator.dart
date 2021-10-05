import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_burclar_listesi/burc_detay.dart';
import 'package:flutter_burclar_listesi/burc_listesi.dart';
import 'package:flutter_burclar_listesi/model/burcmodel.dart';

class GeneratorRoute {
  static Route<dynamic>? routeGenerator(RouteSettings settings){

    switch (settings.name) {
      case "/": return MaterialPageRoute(builder: (context)=>BurcListesi());
      case "/burcDetay": 
      final Burc secilen=settings.arguments as Burc;
      return
       MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: secilen,));

        
      default:
    }

  }
}