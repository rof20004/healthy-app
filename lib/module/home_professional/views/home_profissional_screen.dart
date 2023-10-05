import 'package:app/module/home_professional/data/list_of_students.dart';
import 'package:flutter/material.dart';

class HomeProfissionalScreen extends StatelessWidget {
  const HomeProfissionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: Column(
            children: [
              Text(
                'Consultas Marcadas',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Expanded(
                child: ListView(children: listOfStudents),
              ),
            ],
          ),
        ),
      ),
    );
  }
}