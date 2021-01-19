import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateForm extends StatefulWidget {
  @override
  _DateFormState createState() => _DateFormState();
}

class _DateFormState extends State<DateForm> {
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
      print(DateFormat('dd/MM/y').format(_selectedDate));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
