import 'package:cadu_fifa/app/modules/home/submodules/market/components/search_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/card_transfer.dart';
import 'market_controller.dart';

class MarketPage extends StatefulWidget {
  final String title;
  const MarketPage({Key key, this.title = "Market"}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends ModularState<MarketPage, MarketController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                child: Column(
                  children: [
                    Text('Disputas do Momento'),
                    CardTransfer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: RaisedButton(
        color: Colors.blue,
        child: Text(
          'Buscar Jogador',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          showDialog(context: context, builder: (_) => SearchDialog());
          controller.filteredPlayers;
        },
      ),
    );
  }
}
