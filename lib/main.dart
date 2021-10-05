import 'package:flutter/material.dart';
import 'package:flutter_burclar_listesi/route_generator.dart';

import 'burc_listesi.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      // home:  BurcListesi(),
      onGenerateRoute: GeneratorRoute.routeGenerator,
    );

  }
}