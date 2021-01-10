import 'pages/players_page.dart';
import 'team_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'team_page.dart';

class TeamModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $TeamController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => TeamPage()),
        ModularRouter('/players', child: (_, args) => PlayerPage()),
      ];

  static Inject get to => Inject<TeamModule>.of();
}
