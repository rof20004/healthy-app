import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Bem vindo! Por favor, selecione o módulo desejado.",
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const MyAppContainer(
            text: "Adolescente",
            icon: Icons.school_rounded,
            path: "/auth/",
          ),
          const MyAppContainer(
            text: "Profissional",
            icon: Icons.health_and_safety_rounded,
            path: "/cadProf/",
          ),
        ],
      ),
    );
  }
}

class MyAppContainer extends StatelessWidget {
  const MyAppContainer({
    super.key,
    required this.text,
    required this.icon,
    required this.path,
  });

  final String text, path;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        Modular.to.navigate(path);
      },
      child: Card(
        child: Column(
          children: [
            Icon(
              icon,
              size: 100,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}
