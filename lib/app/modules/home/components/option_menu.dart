import 'package:flutter/material.dart';

class OptionMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: choiceAction,
      itemBuilder: (BuildContext context) {
        return Constants.choices.map((
          String choice,
        ) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}

void choiceAction(String choice) {
  switch (choice) {
    case 'Novo Jogador':
      // Modular.to.pushNamed('home/playerRegister');
      return null;
      break;
    case 'Sair':
      //  Navigator.of(context).pushNamed('/players')
      return null;
      break;
    default:
  }
}

class Constants {
  static const String data = 'Novo Jogador';
  static const String status = "Sair";

  static const List<String> choices = <String>[data, status];
}
