import 'package:app/module/home/views/widgets/psycho_card.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String _name = "", _image = "";
  String get name => _name;
  String get image => _image;
  DateTime? _bookingDate;
  DateTime get bookingDate =>_bookingDate??DateTime.now();
  final List<PsychoCard> _minhasConsultas = [];
  List<PsychoCard> get minhasConsultas => _minhasConsultas;

  addConsulta(PsychoCard card){
    _minhasConsultas.add(card);
    notifyListeners();
  }

  set bookingDate(DateTime bookingDate) {
    _bookingDate = bookingDate;
    notifyListeners();
  }

  set name(String name){
    _name = name;
    notifyListeners();
  }

  set image(String image){
    _image = image;
    notifyListeners();
  }
}