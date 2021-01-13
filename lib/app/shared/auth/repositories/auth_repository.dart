import 'package:cadu_fifa/app/modules/login/helpers/firebase_errors.dart';
import 'package:cadu_fifa/app/modules/login/models/user_model.dart';
import 'package:cadu_fifa/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository implements IAuthRepository {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future singIn(UserModel user, Function onFail, Function onSucess) async {
    try {
      final result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);

      onSucess();
    } catch (e) {
      onFail(getErrorString(e.code));
    }
  }
}
