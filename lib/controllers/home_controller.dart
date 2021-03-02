import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier{
  int _quantify = 0;
  double _gallon;
  List<double> _bottles = List<double>();

  List<TextEditingController> _bottlesController = List<TextEditingController>();

  final TextEditingController _quantifyController = TextEditingController();
  final TextEditingController _gallonController = TextEditingController();

  get quantifyController => this._quantifyController;

  get gallonController => this._gallonController;

  List<TextEditingController> get bottlesController => this._bottlesController;

  setcontrollerTextFieldBottles(int index){
    this._bottlesController[index] = TextEditingController();
  }

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

  // void organizeLargerToSmaller(){
  //   print('organiza');
  //   bottlesController.sort((a, b) {
  //     print('${a.value.text}');
  //     /*double number1 = double.parse(a.value.text);
  //     double number2 = double.parse(b.value.text);
  //     if(number2 > number1) return 1;
  //     else if(number1 == number2) return 0;
  //     else return -1;*/
  //   });

  //   for(var x in bottlesController){
  //     print(x.value.text);
  //   }
  // }

  addListBottles(){
    for(TextEditingController x in bottlesController){
      this._bottles.add(double.parse(x.value.text));
    }
  }

}