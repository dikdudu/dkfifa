import 'package:cadu_fifa/app/modules/home/submodules/player_register/player_register_module.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';
import 'submodules/team/repositories/team_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
        Bind((i) => TeamRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/playerRegister', module: PlayerRegisterModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
