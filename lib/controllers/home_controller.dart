import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier{
  int _quantify = 0;
  double _gallon;
  List<double> _bottles;

  final TextEditingController _quantifyController = TextEditingController();
  final TextEditingController _gallonController = TextEditingController();

  get quantifyController => this._quantifyController;

  get gallonController => this._gallonController;

  set quantify(int value){
    this._quantify = value;
    print(quantify);
    notifyListeners();
  }
  get quantify => this._quantify;

  set gallon(double value){
    this._gallon = value;
    notifyListeners();
  }
  get gallon => this._gallon;

  set bottles(double value){
    this._bottles.add(value);
    notifyListeners();
  }
  get bottles => this._bottles;

  submit(){
    print('chamou');
    try {
      quantify = int.parse(_quantifyController.value.text); 
      gallon = double.parse(_gallonController.value.text);
    } catch (e) {
    }
    notifyListeners();
    print(quantify);
  }

}