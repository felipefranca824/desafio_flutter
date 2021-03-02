import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier{
  int _quantidaGarrafas = 0;
  int _galao;
  List<double> _garrafas;

  set quantidade(int value){
    this._quantidaGarrafas = value;
    notifyListeners();
  }
  get quantidade => this._quantidaGarrafas;

  set galao(int value){
    this._galao = value;
    notifyListeners();
  }
  get galao => this._galao;

  set garrafas(double value){
    this._garrafas.add(value);
    notifyListeners();
  }
  get garragas => this._garrafas;

}