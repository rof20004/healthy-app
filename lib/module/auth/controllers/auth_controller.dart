import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  String _icon = "assets/images/iconne 6.jpeg";
  String get icon => _icon;
  int _actualIndex = 0;
  int get actualIndex => _actualIndex;
  String _preferedName = "";
  String get preferedName => _preferedName;
  String _age = "";
  String get age => _age;
  String _email = "";
  String get email => _email;
  String _telefone = "";
  String get telefone => _telefone;
  String _feeling = "";
  String get feeling => _feeling;

  set feeling(String newFeeling) {
    _feeling = newFeeling;
    notifyListeners();
  }

  set telefone(String newTelefone) {
    _telefone = newTelefone;
    notifyListeners();
  }

  set email(String newEmail){
    _email = newEmail;
    notifyListeners();
  }

  set age(String newAge) {
    _age = newAge;
    notifyListeners();
  }
  set preferedName(String name){
    _preferedName = name;
    notifyListeners();
  }

  set actualIndex(int index){
    _actualIndex = index;
    notifyListeners();
  }

  set icon(String icon){
    _icon = icon;
    notifyListeners();
  }
}