import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerRegisterRepository {
  Future savePlayer({
    String name,
    String image,
    int over,
    String position,
    String datenasc,
  }) async {
    FirebaseFirestore.instance.collection('players').add({
      'name': name,
      'image': image,
      'over': over,
      'position': position,
      'datenasc': datenasc,
    });
  }
}
