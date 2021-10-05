import 'package:flutter/material.dart';
import 'package:flutter_burclar_listesi/model/burcmodel.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

Color appBarColor=Colors.pink;
late PaletteGenerator _generator;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
// _appbarRenginiBul();
WidgetsBinding.instance!.addPostFrameCallback((timeStamp) =>_appbarRenginiBul());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
         floating: true,
         pinned: true,
         backgroundColor: appBarColor,
          flexibleSpace: FlexibleSpaceBar(
            
            background: Image.asset(
            widget.secilenBurc.getBuyukResim,
            fit: BoxFit.cover,
          ),
                   title: Text(widget.secilenBurc.getBurcAdi+" Burcu Özellikleri"),
                   
          ),
        
          expandedHeight: 250,
 
        ),
        SliverToBoxAdapter(
          child: Container(
            margin:const EdgeInsets.all(16),
            padding:const EdgeInsets.all(8),

            child: SingleChildScrollView(
              child: Text(widget.secilenBurc.getBurcDetay,style: Theme.of(context).textTheme.subtitle1,),
            ),
          ),
        )
      ],
    ));
  }

  void _appbarRenginiBul()async {

      _generator=await PaletteGenerator.fromImageProvider(AssetImage(widget.secilenBurc.getBuyukResim));
        setState(() {
        appBarColor=_generator.dominantColor!.color;
          
        });
        print(appBarColor);
      

  }
}
