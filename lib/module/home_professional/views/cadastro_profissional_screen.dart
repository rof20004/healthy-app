import 'package:app/app/common/my_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroProfissionalScreen extends StatelessWidget {
  CadastroProfissionalScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Cadastro de Psicólogos",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    MyTextFormField(
                      text: "Digite seu nome completo",
                      validator: (p0) {
                        if (p0 == "") {
                          return "Este campo é obrigatório.";
                        }
                        return null;
                      },
                    ),
                    MyTextFormField(
                      text: "Digite seu CPF",
                      validator: (p0) {
                        if (p0 == "" || (int.tryParse(p0??"") is! int)) {
                          if (p0 == "") {
                            return "Este campo é obrigatório.";
                          }
                          return "Este campo é um campo numérico.";
                        }
                        return null;
                      },
                    ),
                    MyTextFormField(
                      text: "Digite seu CRP",
                      validator: (p0) {
                        if (p0 == "" || (int.tryParse(p0??"") is! int)) {
                          if (p0 == "") {
                            return "Este campo é obrigatório.";
                          }
                          return "Este campo é um campo numérico.";
                        }
                        return null;
                      },
                    ),
                    MyTextFormField(
                      text: "Digite seu Email",
                      validator: (p0) {
                        if (p0 == "") {
                          return "Este campo é obrigatório.";
                        }
                        return null;
                      },
                    ),
                    MyTextFormField(
                      text: "Digite sua Senha",
                      validator: (p0) {
                        if (p0 == "") {
                          return "Este campo é obrigatório.";
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    MyElevatedButton(onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Modular.to.navigate("/cadProf/homeProf");
                      }
                    }, text: "CONFIRMAR")
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.text,
    this.obscureText = false,
    required this.validator,
  });

  final String text;
  final bool obscureText;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(hintText: text),
      ),
    );
  }
}
