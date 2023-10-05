import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/auth/controllers/auth_controller.dart';
import 'package:app/module/home/data/list_of_feelings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthFeelingScreen extends StatelessWidget {
  const AuthFeelingScreen({
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
              "Como está se sentindo, ${authController.preferedName} ?",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            DropdownButton(
              items: listOfFeelings,
              onChanged: (value) {
                authController.feeling = value;
              },
              hint: const Text("Escolha uma das opções"),
              value: (authController.feeling != "")
                  ? authController.feeling
                  : null,
            ),
            MyElevatedButton(
              conditionToVerify: authController.feeling != "",
              onPressed: () {
                Modular.to.navigate("/home/");
              },
              text: "CONFIRMAR",
            ),
          ],
        ),
      ),
    );
  }
}
