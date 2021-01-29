import 'package:cadu_fifa/app/modules/home/submodules/market/models/disputa_model.dart';
import 'package:cadu_fifa/app/modules/home/submodules/market/models/player_market_model.dart';
import 'package:cadu_fifa/app/modules/home/submodules/market/models/team_mark_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MarketRepository {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future transferPlayerFree(
    String idPlayer,
    String team,
    int price,
    String status,
  ) async {
    int valorAtual = await subPatrimonioTeam(team, price);
    print(valorAtual);

    await attPatrimonioTeam(valorAtual, team);

    await upPlayer(idPlayer, team, price, status);
  }

  Future transferPlayerDisp(
    String idPlayer,
    String team,
    int price,
    String status,
    String newTeam,
    int newPrice,
  ) async {
    int valorSub = await subPatrimonioTeam(newTeam, newPrice);
    await attPatrimonioTeam(valorSub, newTeam);

    int valorAdd = await addPatrimonioTeam(team, price);
    await attPatrimonioTeam(valorAdd, team);

    await upPlayer(idPlayer, newTeam, price, status);

    await db.collection('disputas').doc(idPlayer).set({
      'player': idPlayer,
      'teams': [
        newTeam,
        team,
      ],
      'price': price,
      'team': team,
      'open': true,
    });
  }

  Future subPatrimonioTeam(
    String team,
    int price,
  ) async {
    DocumentSnapshot snapshot = await db.collection('teams').doc(team).get();
    int valorAtual = snapshot.data()['patrimonio'];
    return (valorAtual - price);
  }

  Future addPatrimonioTeam(
    String team,
    int price,
  ) async {
    DocumentSnapshot snapshot = await db.collection('teams').doc(team).get();
    int valorAtual = snapshot.data()['patrimonio'];
    return (valorAtual + price);
  }

  Future attPatrimonioTeam(
    int valor,
    String team,
  ) async {
    await db.collection('teams').doc(team).update({
      'patrimonio': valor,
    });
  }

  Future upPlayer(
    String idPlayer,
    String team,
    int price,
    String status,
  ) async {
    await db.collection('players').doc(idPlayer).update({
      'team': team,
      'price': price,
      'status': status,
    });
  }

  //Buscar Disputas
  Future catchDisputas() async {
    QuerySnapshot snapDisp = await db.collection('disputas').get();
    List<DisputaModel> disputas = [];

    for (DocumentSnapshot document in snapDisp.docs) {
      final disputa = DisputaModel.fromDocument(document);
      disputas.add(disputa);
    }

    return disputas;
  }

  Future catchTeamDisp(String team) async {
    DocumentSnapshot document = await db.collection('teams').doc(team).get();

    return TeamMarkModel.fromDocument(document);
  }

  Future catchPlayerDisp(String player) async {
    DocumentSnapshot document =
        await db.collection('players').doc(player).get();

    return PlayerMarketModel.fromDocment(document);
  }
}
