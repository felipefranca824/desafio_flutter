import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier{
  int _quantify = 0;
  int _gallon;
  List<double> _bottles;

  set quantify(int value){
    this._quantify = value;
    notifyListeners();
  }
  get quantify => this._quantify;

  set gallon(int value){
    this._gallon = value;
    notifyListeners();
  }
  get gallon => this._gallon;

  set bottles(double value){
    this._bottles.add(value);
    notifyListeners();
  }
  get bottles => this._bottles;

}