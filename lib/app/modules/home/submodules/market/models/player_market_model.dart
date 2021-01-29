import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerMarketModel {
  String image;
  String name;
  String position;
  int over;

  PlayerMarketModel({this.image, this.name, this.position, this.over});

  PlayerMarketModel.fromDocment(DocumentSnapshot document) {
    image = document.data()['image'];
    name = document.data()['name'];
    position = document.data()['position'];
    over = document.data()['over'];
  }
}
