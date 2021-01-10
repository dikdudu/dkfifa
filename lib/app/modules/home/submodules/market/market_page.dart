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
                child: CardTransfer(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
