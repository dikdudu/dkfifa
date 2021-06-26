import 'package:cloud_firestore/cloud_firestore.dart';

class TeamMarkModel {
  String image;
  String name;

  TeamMarkModel({this.image, this.name});

  TeamMarkModel.fromDocument(DocumentSnapshot<Map<String, dynamic>> document) {
    image = document.data()['image'];
    name = document.data()['name'];
  }
}
