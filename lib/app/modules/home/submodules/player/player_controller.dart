import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'player_controller.g.dart';

@Injectable()
class PlayerController = _PlayerControllerBase with _$PlayerController;

abstract class _PlayerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
