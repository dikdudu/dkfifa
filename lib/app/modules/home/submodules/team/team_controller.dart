import 'package:cadu_fifa/app/modules/home/submodules/team/repositories/team_repository.dart';
import 'package:cadu_fifa/app/modules/login/models/user_model.dart';
import 'package:cadu_fifa/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:cadu_fifa/app/shared/players/models/player_model.dart';
import 'package:cadu_fifa/app/shared/players/player_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'models/team_model.dart';

part 'team_controller.g.dart';

@Injectable()
class TeamController = _TeamControllerBase with _$TeamController;

abstract class _TeamControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();
  final TeamRepository _teamRepository = Modular.get();
  final PlayerRepository _playerRepository = Modular.get();

  _TeamControllerBase() {
    autorun((_) {
      getUser();
    });
  }

  @observable
  UserModel user;

  @observable
  TeamModel team;

  @observable
  bool isLoading = false;

  @action
  Future getUser() async {
    isLoading = true;
    user = await _authRepository.loadCurrentUser();
    await getTeam(user.team);
    isLoading = false;
  }

  @action
  Future getTeam(teamUser) async {
    team = await _teamRepository.catchTeam(teamUser);
  }

  //pegar jogadores
  @observable
  List<PlayerModel> players;

  @action
  Future getPlayers() async {
    players = await _playerRepository.catchAllPlayers();
    imprimirJogador();
  }

  imprimirJogador() {
    for (var player in players) {
      print(player.name);
    }
  }
}
