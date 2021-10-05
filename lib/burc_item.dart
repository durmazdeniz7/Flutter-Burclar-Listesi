import 'package:flutter/material.dart';
import 'package:flutter_burclar_listesi/burc_detay.dart';
import 'package:flutter_burclar_listesi/model/burcmodel.dart';


class BurcItem extends StatelessWidget {
  final Burc burc;
   BurcItem({required this.burc, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      var myTextStyle=Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.pushNamed(context, "/burcDetay",arguments: burc);
            },
            leading: CircleAvatar(child: Image.asset(burc.getKucukResim,),),
            title: Text(burc.getBurcAdi,style:  myTextStyle.headline5,),
            subtitle: Text(burc.getBurcTarihi,style:  myTextStyle.subtitle2),
            trailing:const Icon(Icons.arrow_forward_ios,color: Colors.pink,),
          ),
        ),

      ),
    );
  }
}