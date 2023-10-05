import 'package:app/app/common/my_navigation_bar.dart';
import 'package:app/module/home/data/psycho_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
