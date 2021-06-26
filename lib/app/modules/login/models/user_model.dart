import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String id;
  String email;
  String name;
  String team;
  String password;

  UserModel({this.id, this.email, this.name, this.password, this.team});

  UserModel.fromDocument(DocumentSnapshot<Map<String, dynamic>> document) {
    id = document.id;
    name = document.data()['name'] as String;
    email = document.data()['email'] as String;
    team = document.data()['team'] as String;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'team': team,
    };
  }
}
