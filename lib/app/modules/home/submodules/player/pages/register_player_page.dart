import 'package:cadu_fifa/app/modules/home/submodules/player/components/date_form.dart';
import 'package:cadu_fifa/app/modules/home/submodules/player/components/drop_form.dart';
import 'package:flutter/material.dart';

class RegisterPlayerPage extends StatefulWidget {
  // final _formKey = GlobalKey<FormState>();

  @override
  _RegisterPlayerPageState createState() => _RegisterPlayerPageState();
}

class _RegisterPlayerPageState extends State<RegisterPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Novo Jogador'),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: () {}),
        ],
      ),
      body: Form(
        // key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Nome do jogador",
              ),
              onSaved: (t) {},
              // validator: (t) {},
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "URL da imagem",
              ),
              onSaved: (t) {},
              // validator: (t) {},
            ),
            SizedBox(height: 40),
            DropForm(),
            DateForm(),
          ],
        ),
      ),
    );
  }
}
