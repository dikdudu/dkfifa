import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'team_controller.g.dart';

@Injectable()
class TeamController = _TeamControllerBase with _$TeamController;

abstract class _TeamControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
