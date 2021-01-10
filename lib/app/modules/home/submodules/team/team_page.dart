import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/card_widget.dart';
import 'team_controller.dart';

class TeamPage extends StatefulWidget {
  final String title;
  const TeamPage({Key key, this.title = "Team"}) : super(key: key);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends ModularState<TeamPage, TeamController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Minha Equipe",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            CardWidget(),
            SizedBox(height: 15),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ELENCO',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Jogadores da Equipe',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          spreadRadius: 1.0,
                          blurRadius: 8.0,
                        )
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey[900],
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/players');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HISTORICO',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Minhas Transações',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          spreadRadius: 1.0,
                          blurRadius: 8.0,
                        )
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey[900],
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
