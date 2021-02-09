import 'package:cadu_fifa/app/modules/home/submodules/market/components/custom_dialog.dart';
import 'package:cadu_fifa/app/modules/home/submodules/market/market_controller.dart';
import 'package:cadu_fifa/app/shared/players/models/player_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchDialog extends StatefulWidget {
  @override
  _SearchDialogState createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  final MarketController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: TextFormField(
            initialValue: controller.search,
            onChanged: controller.setSearch,
            textInputAction: TextInputAction.search,
            autofocus: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              prefixIcon: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Observer(builder: (_) {
              if (controller.playersList.hasError) {
                return Center(
                  child: RaisedButton(
                    onPressed: controller.getListPlayers,
                    child: Text('ERROR'),
                  ),
                );
              }

              if (controller.playersList.data == null) {
                return Center(child: CircularProgressIndicator());
              }

              List<PlayerModel> list = controller.filteredPlayers;

              return ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          list[index].image,
                          fit: BoxFit.contain,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index].position,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              list[index].name,
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        list[index].over.toString(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(width: 10),
                      FlatButton(
                        onPressed: () async {
                          await controller.getTeam(index);
                          showDialog(
                            context: context,
                            builder: (_) => CustomDialog(
                              idPlayer: list[index].id,
                              namePlayer: list[index].name,
                              imagePlayer: list[index].image,
                              over: list[index].over,
                              indexPlayer: index,
                            ),
                          );
                          controller.changeError(null);
                        },
                        child: Text(
                          'Negociar',
                          style: TextStyle(color: Colors.green),
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => Divider(height: 20),
                itemCount: list.length,
                shrinkWrap: false,
                controller: ScrollController(keepScrollOffset: false),
                physics: const NeverScrollableScrollPhysics(),
              );
            }),
          ),
        ),
      ],
    );
  }
}
