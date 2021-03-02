import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier {
  int _quantify = 0;
  double _gallon;
  String _response = '';
  double _rest;
  List<double> _bottles = List<double>();
  List<double> _valuesResponse = List<double>();
  List<TextEditingController> _bottlesController =
      List<TextEditingController>();
  
  final TextEditingController _quantifyController = TextEditingController();
  final TextEditingController _gallonController = TextEditingController();

  List<double> get valuesResponse => this._valuesResponse;
  set valuesresponse(List<double> list) {
    this._valuesResponse = list;
    notifyListeners();
  }

  String get response => this._response;

  set response(String response){
    this._response = response;
    notifyListeners();
  }

  double get rest => this._rest;

  set rest(double rest){
    this._rest = rest;
    notifyListeners();
  }

  get quantifyController => this._quantifyController;

  get gallonController => this._gallonController;

  List<TextEditingController> get bottlesController => this._bottlesController;

  setcontrollerTextFieldBottles(int index) {
    this._bottlesController.add(TextEditingController());
  }

  set bottlesController(List<TextEditingController> list) {
    this._bottlesController = list;
  }

  set quantify(int value) {
    this._quantify = value;
    print(quantify);
    notifyListeners();
  }

  get quantify => this._quantify;

  set gallon(double value) {
    this._gallon = value;
    notifyListeners();
  }

  get gallon => this._gallon;

  set bottles(List<double> list) {
    this._bottles = list;
    notifyListeners();
  }

  List<double> get bottles => this._bottles;

  submit() {
    print('chamou');
    try {
      quantify = int.parse(_quantifyController.value.text);
      gallon = double.parse(_gallonController.value.text);
      this._bottlesController = [];
    } catch (e) {}
    notifyListeners();
    print(quantify);
  }

  void organizeLargerToSmaller() {
    print('organiza');

    bottles.sort((a, b) {
      if (b > a)
        return 1;
      else if (b == a)
        return 0;
      else
        return -1;
    });
  }

  addListBottles() {
    this._response = '';
    bottles = [];
    print('${bottlesController.length} tamanho');
    for (TextEditingController x in bottlesController) {
      this._bottles.add(double.parse(x.value.text));
    }
    bottlesController = [];

    organizeLargerToSmaller();
    verifyFillGallon();
  }

  verifyFillGallon() {
    for (double value in bottles) {
      print('valores $value');
      if (gallon - value >= 0) {
        gallon = gallon - value;
        valuesResponse.add(value);
      }
    }
    rest = gallon;
    if(gallon > 0){
      double smaller = bottles.elementAt(bottles.length - 1);
      valuesResponse.add(smaller);
      rest = smaller - gallon;
    }

    gallon = double.parse(gallonController.value.text);
    quantify = int.parse(quantifyController.value.text);
  }

  String stringResponse() {
    response = '';

    for (int i = 0; i < valuesResponse.length; i++) {
      print('valores resposta ${valuesResponse[i]}');
      response += i == (valuesResponse.length - 1)
          ? '${valuesResponse[i]}L'
          : '${valuesResponse[i]}L, ';
      print(response);
    }

    return this._response;
  }
}
