import 'player_register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'player_register_page.dart';

class PlayerRegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PlayerRegisterController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PlayerRegisterPage()),
      ];

  static Inject get to => Inject<PlayerRegisterModule>.of();
}
