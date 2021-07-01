import 'pages/players_page.dart';
import 'team_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'team_page.dart';

class TeamModule extends Module {
  @override
  List<Bind> get binds => [
        $TeamController,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => TeamPage()),
        ChildRoute('/players', child: (_, args) => PlayerPage()),
      ];
}
