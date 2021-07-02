import 'package:cadu_fifa/app/modules/home/submodules/market/market_page.dart';
import 'package:cadu_fifa/app/modules/home/submodules/news/news_page.dart';
import 'package:cadu_fifa/app/modules/home/submodules/player_register/player_register_module.dart';
import 'package:cadu_fifa/app/modules/home/submodules/team/team_page.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';
import 'submodules/team/repositories/team_repository.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        $HomeController,
        Bind((i) => TeamRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/home',
          child: (context, args) => HomePage(),
          children: [
            ChildRoute('/team', child: (_, __) => TeamPage()),
            ChildRoute('/news', child: (_, __) => NewsPage()),
            ChildRoute('/market', child: (_, __) => MarketPage()),
          ],
        ),
      ];
}
