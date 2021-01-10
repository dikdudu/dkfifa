import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'market_controller.g.dart';

@Injectable()
class MarketController = _MarketControllerBase with _$MarketController;

abstract class _MarketControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
