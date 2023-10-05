import 'package:app/app/common/my_navigation_bar.dart';
import 'package:app/module/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListOfConsultasScreen extends StatelessWidget {
  const ListOfConsultasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = context.watch<HomeController>();


    return Scaffold(
      bottomNavigationBar: const MyNavigationBar(
        selectedIndex: 1,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: Column(
            children: [
              Text(
                'Minhas Consultas',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Expanded(
                child: ListView(children: homeController.minhasConsultas),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
