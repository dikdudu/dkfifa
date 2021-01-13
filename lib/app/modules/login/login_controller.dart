import 'package:cadu_fifa/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'models/user_model.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  bool loading = false;

  @action
  Future signIn({UserModel user, Function onFail, Function onSucess}) async {
    setLoading(true);
    await _authRepository.singIn(user, onFail, onSucess);
    setLoading(false);
  }

  @action
  void setLoading(bool value) {
    loading = value;
  }
}
