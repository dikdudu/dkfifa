import 'package:cadu_fifa/app/modules/home/submodules/market/market_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'currency_format.dart';
import 'dialog_success.dart';

class CustomDialog extends StatefulWidget {
  final String namePlayer, imagePlayer, idPlayer;
  final int over, indexPlayer;

  const CustomDialog({
    Key key,
    this.namePlayer,
    this.imagePlayer,
    this.over,
    this.idPlayer,
    this.indexPlayer,
  });

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  MarketController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 90,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ],
          ),
          child: Observer(
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.namePlayer,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  controller.filteredPlayers[widget.indexPlayer].team == null ||
                          controller
                              .filteredPlayers[widget.indexPlayer].team.isEmpty
                      ? Text(
                          'Livre no Mercado!',
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        )
                      : Text(
                          'Negociando com: ${controller.teamName}',
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        ),
                  TextField(
                    onChanged: controller.changeTransferPrice,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CurrencyFormat(),
                    ],
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      errorText: controller.error,
                      labelText: 'Valor da Proposta (DK\$)',
                    ),
                  ),
                  SizedBox(height: 24),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancelar'),
                        ),
                        FlatButton(
                          onPressed: () {
                            controller.transferPlayer(
                              widget.idPlayer,
                              widget.over,
                              widget.indexPlayer,
                            );

                            Navigator.of(context).pop();
                            showDialog(
                                context: context,
                                builder: (_) => DialogSuccess());
                          },
                          child: Text('Fazer Proposta'),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
          child: CircleAvatar(
            child: Image.network(widget.imagePlayer),
            backgroundColor: Colors.white,
            radius: 50,
          ),
        ),
      ],
    );
  }
}
