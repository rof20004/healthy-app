import 'package:app/app/common/my_navigation_bar.dart';
import 'package:app/module/home/controllers/home_controller.dart';
import 'package:app/module/home/views/widgets/psycho_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = context.watch<HomeController>();
    List<PsychoCard> listOfPsychos = [
      PsychoCard(
        image: "assets/images/pessoa 1.jpg",
        name: "Manoel Yamamoto",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 2.jpg",
        name: "Silva Cristina",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 3.jpg",
        name: "Carla Gonçalves",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 4.jpg",
        name: "Ricardo Nobrega",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 5.jpg",
        name: "Luiza Costa",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 6.jpg",
        name: "Manoela Silva",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 7.jpg",
        name: "Yumi Nagasawa",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 8.jfif",
        name: "Letiçia Brandão",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 9.jfif",
        name: "Mikaela Santos",
        info: "info",
        homeController: homeController,
      ),
      PsychoCard(
        image: "assets/images/pessoa 10.jfif",
        name: "Carla Vicente",
        info: "info",
        homeController: homeController,
      ),
    ];
    return Scaffold(
      bottomNavigationBar: const MyNavigationBar(selectedIndex: 0,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: Column(
            children: [
              Text(
                'Psicólogos disponíveis',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Expanded(
                child: ListView(children: listOfPsychos),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
