import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    super.key,
    this.iconList = const [
      "assets/images/iconne 6.jpeg",
      "assets/images/iconne 7.jpeg",
      "assets/images/iconne 8.jpeg",
      "assets/images/iconne 9.jpeg",
      "assets/images/iconne 10.jpeg",
      "assets/images/iconne 11.jpeg",
    ],
  });

  final List<String> iconList;

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
              "Escolha o seu avatar",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_left_rounded),
                ),
                CircleAvatar(
                    backgroundImage:
                        AssetImage(iconList[authController.actualIndex]),minRadius: 100,),
                IconButton(
                  onPressed: () {
                    if (authController.actualIndex == 5) {
                      authController.actualIndex = 0;
                    } else {
                      authController.actualIndex++;
                    }
                    authController.icon = iconList[authController.actualIndex];
                  },
                  icon: const Icon(Icons.arrow_right_rounded),
                ),
              ],
            ),
            MyElevatedButton(
              onPressed: () {
                Modular.to.navigate("/auth/name");
              },
              text: "CONFIRMAR",
            )
          ],
        ),
      ),
    );
  }
}
