import 'package:cadu_fifa/app/shared/players/player_repository.dart';

import 'market_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'market_page.dart';
import 'pages/second_page.dart';
import 'repositories/market_repository.dart';

class MarketModule extends Module {
  @override
  List<Bind> get binds => [
        $MarketController,
        Bind((i) => PlayerRepository()),
        Bind((i) => MarketRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => MarketPage()),
        ChildRoute("/second", child: (_, args) => SecondPage()),
      ];
}
