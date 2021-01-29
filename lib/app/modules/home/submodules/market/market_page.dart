import 'package:cadu_fifa/app/modules/home/submodules/market/components/search_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text('Mercado'),
                Observer(builder: (context) {
                  if (controller.finalLista.isEmpty) {
                    return Center(child: CircularProgressIndicator());
                  } else if (controller.finalLista == null) {
                    return Text('Nenhum Leilão ocorrendo no momento');
                  } else {
                    return CardTransfer();
                  }
                })
              ],
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(context: context, builder: (_) => SearchDialog());
          controller.filteredPlayers;
        },
      ),
    );
  }
}
