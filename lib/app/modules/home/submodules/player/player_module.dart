import 'player_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'player_page.dart';

class PlayerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PlayerController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PlayerPage()),
      ];

  static Inject get to => Inject<PlayerModule>.of();
}
