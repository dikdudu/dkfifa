import 'package:flutter/material.dart';

class DropForm extends StatefulWidget {
  @override
  _DropFormState createState() => _DropFormState();
}

class _DropFormState extends State<DropForm> {
  String dropdownValue = 'PE';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>[
            'ATA',
            'PE',
            'PD',
            'MEI',
            'MD',
            'ME',
            'MC',
            'VOL',
            'LE',
            'LD',
            'ZG',
            'GO',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
