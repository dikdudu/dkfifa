import 'package:firebase_auth/firebase_auth.dart';

import 'user_model.dart';

class UserManager {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> singIn(UserModel user) async {
    final result = await auth.signInWithEmailAndPassword(
        email: user.email, password: user.password);
  }
}
