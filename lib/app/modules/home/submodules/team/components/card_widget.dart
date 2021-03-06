import 'package:cadu_fifa/app/modules/home/submodules/team/team_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  TeamController controller = Modular.get();

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
            child: Observer(
              builder: (_) {
                return controller.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                            backgroundColor: Colors.white),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Dono:",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Text(
                                controller.user.name,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(width: 50),
                              IconButton(
                                iconSize: 35,
                                color: Colors.white,
                                icon: Icon(Icons.refresh),
                                onPressed: controller.getUser,
                              ),
                            ],
                          ),
                          Text(
                            "Nome da Equipe:",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Text(
                            controller.team.name,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Patrimonio',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'DK\$ ${formatEditUpdate(controller.team.patrimonio.toString())}',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      );
              },
            ),
          )
        ],
      ),
    );
  }

  String formatEditUpdate(String newValue) {
    double value = double.parse(newValue);
    final money = new NumberFormat("###,###,###", "en_us");

    String newText = money.format(value);

    return newText;
  }
}
