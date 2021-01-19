import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'player_register_controller.g.dart';

@Injectable()
class PlayerRegisterController = _PlayerRegisterControllerBase
    with _$PlayerRegisterController;

abstract class _PlayerRegisterControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
