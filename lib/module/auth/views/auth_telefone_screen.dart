import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthTelefoneScreen extends StatelessWidget {
  const AuthTelefoneScreen({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
    AuthController authController = context.watch<AuthController>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "E qual o seu telefone ?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Digite o seu telefone aqui"
              ),
              onChanged: (value) {
                authController.telefone = value;
              },
            ),
            MyElevatedButton(
              conditionToVerify: int.tryParse(authController.telefone) is int,
              onPressed: () {
                Modular.to.navigate("/auth/feeling");
              },
              text: "CONFIRMAR",
            ),
          ],
        ),
      ),
    );
  }
}
