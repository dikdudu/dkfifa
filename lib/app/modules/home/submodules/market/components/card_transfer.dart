import 'package:cadu_fifa/app/modules/home/submodules/market/market_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';

class CardTransfer extends StatefulWidget {
  @override
  _CardTransferState createState() => _CardTransferState();
}

class _CardTransferState extends State<CardTransfer> {
  MarketController controller = MarketController();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return Material(
            elevation: 4.0,
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 4, bottom: 0, left: 0, right: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ClipOval(
                              child: Image.network(
                                controller.finalLista[index].fistTeamImage,
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Text(controller.finalLista[index].fistTeamName),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_left_sharp,
                                color: Colors.orangeAccent,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                        ClipOval(
                          child: Image.network(
                            controller.finalLista[index].imagePlayer,
                            fit: BoxFit.cover,
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_right_outlined,
                                color: Colors.green,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            ClipOval(
                              child: Image.network(
                                controller.finalLista[index].secondTeamImage,
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Text(controller.finalLista[index].secondTeamName),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.finalLista[index].namePlayer,
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  controller.finalLista[index].positionPlayer,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(1.0),
                                    ),
                                    border: Border.all(color: Colors.grey[600]),
                                  ),
                                  child: Text(
                                    controller.finalLista[index].overPlayer
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Saindo por:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'DK\$ ${formatEditUpdate(controller.finalLista[index].valor.toString())}',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      '${controller.finalLista[index].namePlayer} Está Sendo Disputado.'),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Entrar na briga'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(height: 20),
        itemCount: controller.finalLista.length,
        shrinkWrap: true,
        controller: ScrollController(keepScrollOffset: false),
      );
    });
  }

  String formatEditUpdate(String newValue) {
    double value = double.parse(newValue);
    final money = new NumberFormat("###,###,###", "en_us");

    String newText = money.format(value);

    return newText;
  }
}
