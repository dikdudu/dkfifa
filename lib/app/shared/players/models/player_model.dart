import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerModel {
  String id;
  String name;
  int over;
  String team;
  String image;
  String position;
  String datenasc;
  int currentPrice;
  final DocumentReference reference;

  PlayerModel(
      {this.id,
      this.name,
      this.over,
      this.team,
      this.image,
      this.reference,
      this.currentPrice,
      this.datenasc,
      this.position});

  factory PlayerModel.fromDocument(DocumentSnapshot<Map<String, dynamic>> document) {
    return PlayerModel(
      id: document.id,
      name: document.data()['name'],
      over: document.data()['over'],
      team: document.data()['team'],
      image: document.data()['image'],
      position: document.data()['position'],
      datenasc: document.data()['datenasc'],
      currentPrice: document.data()['price'],
    );
  }
}
