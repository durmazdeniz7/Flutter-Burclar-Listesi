
import 'package:flutter_burclar_listesi/data/strings.dart';

class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetay;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetay, this._burcKucukResim, this._burcBuyukResim);

  @override
  String toString() {
    return "Burc Adı $_burcAdi - büyük resim $_burcBuyukResim";
  }

  String get getBurcAdi{
    return this._burcAdi;
  }
  String get getBurcTarihi{
    return this._burcTarihi;
  }
  String get getBurcDetay{
    return this._burcDetay;
  }
  String get getKucukResim{
    return this._burcKucukResim;
  }
  String get getBuyukResim{
    return this._burcBuyukResim;
  }





   
}