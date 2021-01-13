import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterPlayerRepository {
  Future savePlayer() async {
    FirebaseFirestore.instance.collection('players').add({});
  }
}
