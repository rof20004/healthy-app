import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/home/controllers/home_controller.dart';
import 'package:app/module/home/views/dialog_for_booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeCandidateScreen extends StatelessWidget {
  const HomeCandidateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = context.watch<HomeController>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Modular.to.navigate("/home/");
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        homeController.image,
                      ),
                      radius: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Text(
                        homeController.name,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Descrição",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                                "Trabalho na área há 10 anos e tenho muita experiência com casos de divórcio, depressão e auto-conhecimento"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyElevatedButton(
                      onPressed: () {
                        HomeDialogs.bookingDialog();
                      },
                      text: "MARCAR CONSULTA",
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
