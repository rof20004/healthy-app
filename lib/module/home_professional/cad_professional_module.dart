import 'package:app/module/home_professional/views/cadastro_profissional_screen.dart';
import 'package:app/module/home_professional/views/home_profissional_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadProfessionalModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => CadastroProfissionalScreen()),
        ChildRoute("/homeProf", child: (_, __) => const HomeProfissionalScreen())
      ];
}
