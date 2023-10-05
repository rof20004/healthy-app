import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthIdadeScreen extends StatelessWidget {
  const AuthIdadeScreen({
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
              "E qual a sua idade, ${authController.preferedName} ?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Digite a sua idade aqui"
              ),
              onChanged: (value) {
                authController.age = value;
              },
            ),
            MyElevatedButton(
              conditionToVerify: int.tryParse(authController.age) is int,
              onPressed: () {
                Modular.to.navigate("/auth/email");
              },
              text: "CONFIRMAR",
            ),
          ],
        ),
      ),
    );
  }
}
