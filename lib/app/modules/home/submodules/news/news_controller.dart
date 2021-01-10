import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'news_controller.g.dart';

@Injectable()
class NewsController = _NewsControllerBase with _$NewsController;

abstract class _NewsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
