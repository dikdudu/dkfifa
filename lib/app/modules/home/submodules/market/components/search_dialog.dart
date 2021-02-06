import 'package:cadu_fifa/app/modules/home/submodules/market/components/custom_dialog.dart';
import 'package:cadu_fifa/app/modules/home/submodules/market/market_controller.dart';
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
          child: Container(
            child: Observer(builder: (context) {
              return controller.filteredPlayers.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : Card(
                      child: ListView.separated(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              ClipOval(
                                child: Image.network(
                                  controller.filteredPlayers[index].image,
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
                                      controller
                                          .filteredPlayers[index].position,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      controller.filteredPlayers[index].name,
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
                                controller.filteredPlayers[index].over
                                    .toString(),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(width: 10),
                              FlatButton(
                                onPressed: () async {
                                  await controller.getTeam(
                                      controller.filteredPlayers[index].team);
                                  showDialog(
                                    context: context,
                                    builder: (_) => CustomDialog(
                                      idPlayer:
                                          controller.filteredPlayers[index].id,
                                      namePlayer: controller
                                          .filteredPlayers[index].name,
                                      imagePlayer: controller
                                          .filteredPlayers[index].image,
                                      team: controller
                                          .filteredPlayers[index].team,
                                      over: controller
                                          .filteredPlayers[index].over,
                                      currentPrice: controller
                                          .filteredPlayers[index].currentPrice,
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
                        separatorBuilder: (context, index) =>
                            Divider(height: 20),
                        itemCount: controller.filteredPlayers.length,
                        shrinkWrap: false,
                        controller: ScrollController(keepScrollOffset: false),
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    );
            }),
          ),
        ),
      ],
    );
  }
}
