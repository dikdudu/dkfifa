import 'package:cadu_fifa/app/modules/login/helpers/firebase_errors.dart';
import 'package:cadu_fifa/app/modules/login/models/user_model.dart';
import 'package:cadu_fifa/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository implements IAuthRepository {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthRepository() {
    loadCurrentUser();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  UserModel user;

  @override
  Future singIn(UserModel user, Function onFail, Function onSucess) async {
    try {
      final result = await auth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      await loadCurrentUser(firebaseUser: result.user);

      onSucess();
    } catch (e) {
      onFail(getErrorString(e.code));
    }
  }

  @override
  Future loadCurrentUser({var firebaseUser}) async {
    var currentUser = firebaseUser ?? auth.currentUser;
    if (currentUser != null) {
      final DocumentSnapshot docUser = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();
      user = UserModel.fromDocument(docUser);
      return user;
    }
  }
}
