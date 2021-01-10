import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x00FFa1c4fd), Color(0x00FFc2e9fb)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            padding: EdgeInsets.all(10),
            height: 200,
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Nome da Equipe:",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(width: 10),
                Text(
                  "Dirk FC",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  "Patrimonio:",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(width: 10),
                Text(
                  "R\$ 895.000,00",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
