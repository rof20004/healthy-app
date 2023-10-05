import 'package:app/module/auth/auth_module.dart';
import 'package:app/module/home/home_module.dart';
import 'package:app/module/home_professional/cad_professional_module.dart';
import 'package:app/module/start/start_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => const StartScreen()),
        ModuleRoute("/auth", module: AuthModule()),
        ModuleRoute("/home", module: HomeModule()),
        ModuleRoute("/cadProf", module: CadProfessionalModule()),
      ];
}
