import 'package:cadu_fifa/app/modules/login/models/user_model.dart';

abstract class IAuthRepository {
  Future<void> singIn(UserModel user, Function onFail, Function onSucess);
}
