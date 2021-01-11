import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisterPlayerPage extends StatefulWidget {
  // final _formKey = GlobalKey<FormState>();

  @override
  _RegisterPlayerPageState createState() => _RegisterPlayerPageState();
}

class _RegisterPlayerPageState extends State<RegisterPlayerPage> {
  @override
  Widget build(BuildContext context) {
    DateTime _selectedDate;

    _showDatePicker() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime.now(),
      ).then((pickedDate) {
        if (pickedDate == null) {
          return;
        }
        setState(() {
          _selectedDate = pickedDate;
        });
      });
    }

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
              validator: (t) {},
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "URL da imagem",
              ),
              onSaved: (t) {},
              validator: (t) {},
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  _selectedDate == null
                      ? 'Nenhuma dada Seleciona!'
                      : 'Data Selecionada: ${DateFormat('dd/MM/y').format(_selectedDate)}',
                ),
                SizedBox(width: 10),
                FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text(
                    'Seleciona Data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: _showDatePicker,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
