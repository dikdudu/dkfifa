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
    int valorSub = await subPatrimonioTeam(newTeam, price);
    await attPatrimonioTeam(valorSub, newTeam);

    int valorAdd = await addPatrimonioTeam(team, price);
    await attPatrimonioTeam(valorAdd, team);

    await upPlayer(idPlayer, newTeam, price, status);

    await db.collection('disputas').add({
      'player': idPlayer,
      'times': [
        newTeam,
        team,
      ],
      'price': price,
      'time': team,
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
}
