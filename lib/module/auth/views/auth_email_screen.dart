import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthEmailScreen extends StatelessWidget {
  const AuthEmailScreen({
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
              "E qual o seu email ?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Digite o seu email aqui"
              ),
              onChanged: (value) {
                authController.email = value;
              },
            ),
            MyElevatedButton(
              conditionToVerify: authController.email != "",
              onPressed: () {
                Modular.to.navigate("/auth/telefone");
              },
              text: "CONFIRMAR",
            ),
          ],
        ),
      ),
    );
  }
}
