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
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Mercado'.toUpperCase(),
                        style: TextStyle(fontSize: 18),
                      ),
                      IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: controller.reloadList),
                    ],
                  ),
                  Observer(
                    builder: (_) {
                      if (controller.loading) {
                        return Center(child: CircularProgressIndicator());
                      } else if (controller.finalLista.isEmpty ||
                          controller.finalLista == null) {
                        return Center(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              'Nenhum Leilão ocorrendo no momento...',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ));
                      } else {
                        return CardTransfer();
                      }
                    },
                  )
                ],
              ),
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
