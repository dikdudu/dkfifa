import 'package:cadu_fifa/app/modules/home/submodules/player_register/repositories/player_register_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'player_register_controller.g.dart';

@Injectable()
class PlayerRegisterController = _PlayerRegisterControllerBase
    with _$PlayerRegisterController;

abstract class _PlayerRegisterControllerBase with Store {
  PlayerRegisterRepository repository = Modular.get();

  @observable
  String name;

  @observable
  String image;

  @observable
  int over;

  @observable
  String position;

  @observable
  String datenasc;

  @action
  changePlayerName(String name) => this.name = name.trim();

  @action
  changePlayerImage(String url) => this.image = url.trim();

  @action
  changePlayerOver(String over) => this.over = int.parse(over);

  @action
  changePlayerPosition(String position) => this.position = position;

  @action
  changePlayerDateNasc(String date) => this.datenasc = date;

  @action
  String validateName(name) {
    if (name.isEmpty) {
      return 'Campo Obrigatorio';
    } else if (name.trim().split(' ').length <= 1) {
      return 'Preencha o nome completo';
    } else {
      return null;
    }
  }

  @action
  String validateImage(url) {
    if (url.isEmpty) {
      return 'Campo Obrigatorio';
    } else {
      return null;
    }
  }

  @action
  String validateOver(over) {
    if (over.isEmpty) {
      return 'Campo Obrigatorio';
    } else {
      return null;
    }
  }

  @observable
  bool loading = false;

  @action
  Future<bool> savePlayer() async {
    loading = true;
    await repository.savePlayer(
      name: name,
      image: image,
      over: over,
      position: position,
      datenasc: datenasc,
    );

    loading = false;
    return true;
  }
}
