import 'package:cloud_firestore/cloud_firestore.dart';

class TeamModel {
  String id;
  String name;
  int patrimonio;
  String dono;

  TeamModel({
    this.id,
    this.name,
    this.patrimonio,
    this.dono,
  });

  TeamModel.fromDocument(DocumentSnapshot<Map<String, dynamic>> document) {
    id = document.id;
    name = document.data()['name'] as String;
    patrimonio = document.data()['patrimonio'];
    dono = document.data()['dono'];
  }
}
