import 'package:cadu_fifa/app/shared/players/models/player_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerRepository {
  PlayerRepository() {
    catchAllPlayers();
  }

  Future catchAllPlayers() async {
    final QuerySnapshot snapPlayers =
        await FirebaseFirestore.instance.collection("players").get();

    List<PlayerModel> players = [];

    for (DocumentSnapshot document in snapPlayers.docs) {
      final player = PlayerModel.fromDocument(document);
      players.add(player);
    }

    return players;
  }
}
