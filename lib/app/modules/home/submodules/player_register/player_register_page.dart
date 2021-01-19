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
        elevation: 0,
        centerTitle: true,
        title: Text('Novo Jogador'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
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
              onSaved: (i) {},
              validator: (name) {
                if (name.isEmpty) {
                  return 'Campo Obrigatorio';
                } else if (name.trim().split(' ').length <= 1) {
                  return 'Preencha o nome completo';
                } else {
                  return null;
                }
              },
              // validator: (t) {},
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "URL da imagem",
              ),
              onSaved: (i) {},
              validator: (url) {
                if (url.isEmpty) {
                  return 'Campo Obrigatorio';
                } else {
                  return null;
                }
              },
              // validator: (t) {},
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Over",
              ),
              onSaved: (i) {},
              validator: (over) {
                if (over.isEmpty) {
                  return 'Campo Obrigatorio';
                } else {
                  return null;
                }
              },
              // validator: (t) {},
            ),
            SizedBox(height: 10),
            DropForm(),
            DateForm(),
          ],
        ),
      ),
    );
  }

  void savePlayeer() async {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content:
            Text('Salvando Jogador...', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
    );
  }
}
