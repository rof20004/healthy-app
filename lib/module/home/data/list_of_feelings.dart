import 'package:flutter/material.dart';

List<DropdownMenuItem> listOfFeelings = const [
  DropdownMenuItem(
    value: "familia",
    child: Text("Problemas com a Família"),
  ),
  DropdownMenuItem(
    value: "depressao",
    child: Text("Problemas com Depressão"),
  ),
  DropdownMenuItem(
    value: "luto",
    child: Text("Problemas com Luto"),
  ),
  DropdownMenuItem(
    value: "identidade_genero",
    child: Text("Problemas LGBTQIA+"),
  ),
  DropdownMenuItem(
    value: "outro",
    child: Text("Outros"),
  ),

];
