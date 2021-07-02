import 'package:cadu_fifa/app/modules/home/submodules/player_register/player_register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:intl/intl.dart';

class DateForm extends StatefulWidget {
  @override
  _DateFormState createState() => _DateFormState();
}

class _DateFormState extends State<DateForm> {
  final PlayerRegisterController controller = Modular.get();

  DateTime _selectedDate;

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
      controller
          .changePlayerDateNasc(DateFormat('dd/MM/y').format(_selectedDate));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _selectedDate == null
              ? 'Nenhuma dada de Nascimento Seleciona!'
              : 'Data Selecionada: ${DateFormat('dd/MM/y').format(_selectedDate)}',
        ),
        SizedBox(width: 10),
        TextButton(
          child: Text(
            'Selecione a Data',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: _showDatePicker,
        ),
      ],
    );
  }
}
