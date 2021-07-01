import 'news_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'news_page.dart';

class NewsModule extends Module {
  @override
  List<Bind> get binds => [
        $NewsController,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => NewsPage()),
      ];
}
