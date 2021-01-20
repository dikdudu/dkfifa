import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerModel {
  String id;
  String name;
  int over;
  String team;
  String image;
  String position;
  String datenasc;

  PlayerModel({this.id, this.name, this.over, this.team, this.image});

  PlayerModel.fromDocument(DocumentSnapshot document) {
    id = document.id;
    name = document.data()['name'];
    over = document.data()['over'];
    team = document.data()['team'];
    image = document.data()['image'];
    position = document.data()['position'];
    datenasc = document.data()['datenasc'];
  }
}
