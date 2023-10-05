import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar(
      {super.key,
      required this.selectedIndex,
      this.routes = const ["/home/", "/home/consultas"]});

  final int selectedIndex;
  final List<String> routes;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (value) {
        Modular.to.navigate(routes[value]);
      },
      selectedIndex: selectedIndex,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.person_2_rounded),
          label: "Psicólogos",
        ),
        NavigationDestination(
          icon: Icon(Icons.list_rounded),
          label: "Minhas Consultas",
        ),
      ],
    );
  }
}
