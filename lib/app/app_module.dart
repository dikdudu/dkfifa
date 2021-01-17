import 'package:cadu_fifa/app/modules/login/login_module.dart';
import 'package:cadu_fifa/app/shared/auth/auth_controller.dart';
import 'package:cadu_fifa/app/shared/auth/repositories/auth_repository.dart';
import 'package:cadu_fifa/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:cadu_fifa/app/shared/players/player_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:cadu_fifa/app/app_widget.dart';

import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<IAuthRepository>((i) => AuthRepository()),
        Bind((i) => AuthController()),
        Bind((i) => PlayerRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
