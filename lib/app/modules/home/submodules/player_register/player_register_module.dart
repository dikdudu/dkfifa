import 'player_register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'player_register_page.dart';
import 'repositories/player_register_repository.dart';

class PlayerRegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PlayerRegisterController,
        Bind((i) => PlayerRegisterRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PlayerRegisterPage()),
      ];

  static Inject get to => Inject<PlayerRegisterModule>.of();
}
