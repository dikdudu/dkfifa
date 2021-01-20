import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/date_form.dart';
import 'components/drop_form.dart';
import 'player_register_controller.dart';

class PlayerRegisterPage extends StatefulWidget {
  final String title;
  const PlayerRegisterPage({Key key, this.title = "PlayerRegister"})
      : super(key: key);

  @override
  _PlayerRegisterPageState createState() => _PlayerRegisterPageState();
}

class _PlayerRegisterPageState
    extends ModularState<PlayerRegisterPage, PlayerRegisterController> {
  //use 'controller' variable to access controller

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Novo Jogador'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  savePlayeer();
                }
              }),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Nome do jogador",
              ),
              onSaved: controller.changePlayerName,
              validator: controller.validateName,
              // validator: (t) {},
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "URL da imagem",
              ),
              onSaved: controller.changePlayerImage,
              validator: controller.validateImage,
              // validator: (t) {},
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Over",
              ),
              onSaved: controller.changePlayerOver,
              validator: controller.validateOver,
              // validator: (t) {},
            ),
            SizedBox(height: 10),
            DropForm(),
            SizedBox(height: 20),
            DateForm(),
          ],
        ),
      ),
    );
  }

  void savePlayeer() async {
    if (controller.position == null || controller.position == null) {
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text('Preencha todos os dados',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.redAccent,
        ),
      );
    } else {
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text('Salvando Jogador...',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.grey,
        ),
      );
      await controller.savePlayer();
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text('Jogador Salvo com Sucesso!',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),
      );
    }
  }
}
