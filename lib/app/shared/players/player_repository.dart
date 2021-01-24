import 'package:cadu_fifa/app/shared/players/models/player_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerRepository {
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

  Future catchPlayersTeam(userTeam) async {
    final QuerySnapshot snapPlayers =
        await FirebaseFirestore.instance.collection("players").get();
    List<PlayerModel> players = [];
    for (DocumentSnapshot document in snapPlayers.docs) {
      final player = PlayerModel.fromDocument(document);
      players.add(player);
    }

    List<PlayerModel> newPlayersTeam = [];
    for (var player in players) {
      if (player.team == userTeam) {
        newPlayersTeam.add(player);
      }
    }

    return newPlayersTeam;
  }

  Future catchTeamPlayer(String idTeam) async {
    final DocumentSnapshot snapTeamPlayer =
        await FirebaseFirestore.instance.collection("teams").doc(idTeam).get();

    String name = snapTeamPlayer.data()['name'];

    return name;
  }
}
