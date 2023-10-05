import 'package:app/app/common/my_elevated_button.dart';
import 'package:app/module/home/controllers/home_controller.dart';
import 'package:app/module/home/views/widgets/psycho_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeDialogs {
  static bookingDialog() {
    return showDialog(
        context: Modular.routerDelegate.navigatorKey.currentContext!,
        builder: (_) {
          return const BookingDialog();
        });
  }

  static showSimpleDialog(String text) {
    return showDialog(
        context: Modular.routerDelegate.navigatorKey.currentContext!,
        builder: (_) {
          return SimpleDialog(
            title: Text(text),
            titlePadding: const EdgeInsets.all(16),
          );
        });
  }
}

class BookingDialog extends StatelessWidget {
  const BookingDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController homeController = context.watch<HomeController>();
    return AlertDialog(
      title: const Text("Selecione o dia do agendamento"),
      content: SizedBox(
        width:
            MediaQuery.of(Modular.routerDelegate.navigatorKey.currentContext!)
                    .size
                    .width /
                1.25,
        child: CalendarDatePicker(
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 30)),
          onDateChanged: (time) {
            homeController.bookingDate = time;
          },
        ),
      ),
      actions: [
        MyElevatedButton(
          conditionToVerify: homeController.bookingDate != DateTime.now(),
          onPressed: () {
            homeController.addConsulta(PsychoCard(
                image: homeController.image,
                name: homeController.name,
                info: "info"));
            Modular.to.pop();
            HomeDialogs.showSimpleDialog(
                "Sua consulta foi marcada com sucesso!");
          },
          text: "CONFIRMAR",
        )
      ],
    );
  }
}
