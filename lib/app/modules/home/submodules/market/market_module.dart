import 'market_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'market_page.dart';
import 'pages/second_page.dart';

class MarketModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MarketController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => MarketPage()),
        ModularRouter("/second", child: (_, args) => SecondPage()),
      ];

  static Inject get to => Inject<MarketModule>.of();
}
