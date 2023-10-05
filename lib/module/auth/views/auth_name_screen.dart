import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthNameScreen extends StatelessWidget {
  const AuthNameScreen({
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
              "Como você gostaria de ser chamado?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Digite como você gostaria de ser chamado aqui"
              ),
              onChanged: (value) {
                authController.preferedName = value;
              },
            ),
            MyElevatedButton(
              conditionToVerify: authController.preferedName != "",
              onPressed: () {
                Modular.to.navigate("/auth/idade");
              },
              text: "CONFIRMAR",
            )
          ],
        ),
      ),
    );
  }
}
