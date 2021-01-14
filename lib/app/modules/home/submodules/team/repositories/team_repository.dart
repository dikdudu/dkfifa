import 'package:cadu_fifa/app/modules/home/submodules/team/models/team_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TeamRepository {
  TeamModel team;

  Future catchTeam(String teamUser) async {
    final DocumentSnapshot docTeam = await FirebaseFirestore.instance
        .collection('teams')
        .doc(teamUser)
        .get();
    team = TeamModel.fromDocument(docTeam);
    return team;
  }
}
