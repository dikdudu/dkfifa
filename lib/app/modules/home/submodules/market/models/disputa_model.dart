import 'package:cloud_firestore/cloud_firestore.dart';

class DisputaModel {
  bool open;
  String player;
  int price;
  String team;
  List teams;

  DisputaModel({this.open, this.player, this.price, this.team, this.teams});

  DisputaModel.fromDocument(DocumentSnapshot document) {
    open = document.data()['open'];
    player = document.data()['player'];
    price = document.data()['price'];
    team = document.data()['team'];
    teams = document.data()['teams'];
  }
}
