import 'package:cadu_fifa/app/modules/home/submodules/team/repositories/team_repository.dart';
import 'package:cadu_fifa/app/modules/login/models/user_model.dart';
import 'package:cadu_fifa/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'models/team_model.dart';

part 'team_controller.g.dart';

@Injectable()
class TeamController = _TeamControllerBase with _$TeamController;

abstract class _TeamControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();
  final TeamRepository _teamRepository = TeamRepository();

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
    print(team.patrimonio);
  }
}
