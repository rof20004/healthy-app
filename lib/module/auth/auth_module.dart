import 'package:app/module/auth/controllers/auth_controller.dart';
import 'package:app/module/auth/views/auth_email_screen.dart';
import 'package:app/module/auth/views/auth_feeling_screen.dart';
import 'package:app/module/auth/views/auth_idade_screen.dart';
import 'package:app/module/auth/views/auth_name_screen.dart';
import 'package:app/module/auth/views/auth_screen.dart';
import 'package:app/module/auth/views/auth_telefone_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [Bind.singleton((i) => AuthController())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => const AuthScreen()),
        ChildRoute("/name", child: (_, __) => const AuthNameScreen()),
        ChildRoute("/idade", child: (_, __) => const AuthIdadeScreen()),
        ChildRoute("/email", child: (_, __) => const AuthEmailScreen()),
        ChildRoute("/telefone", child: (_, __) => const AuthTelefoneScreen()),
        ChildRoute("/feeling", child: (_, __) => const AuthFeelingScreen())
      ];
}
