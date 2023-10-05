import 'package:app/module/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PsychoCard extends StatelessWidget {
  const PsychoCard({
    super.key,
    required this.image,
    required this.name,
    required this.info,
  });

  final String name, info, image;

  @override
  Widget build(BuildContext context) {
    HomeController homeController =context.watch<HomeController>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTapUp: (details) {
          homeController.image = image;
          homeController.name = name;
          Modular.to.navigate("/home/candidate");
        },
        child: Card(
          child: SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(backgroundImage:AssetImage(image),radius: 30,),
                Text(name, style: Theme.of(context).textTheme.headlineSmall,),
                Text(info)
              ],
            ),
          ),
        ),
      ),
    );
  }
}