import 'package:app/module/home/controllers/home_controller.dart';
import 'package:app/module/home/views/home_candidate_screen.dart';
import 'package:app/module/home/views/home_screen.dart';
import 'package:app/module/home/views/list_of_consultas.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [Bind.singleton((i) => HomeController())];

  @override
  List<ModularRoute> get routes => [
    ChildRoute("/", child: (_,__)=> const HomeScreen()),
    ChildRoute("/candidate", child: (_,__)=>const HomeCandidateScreen()),
    ChildRoute("/consultas", child: (_,__)=>const ListOfConsultasScreen())
  ];
}