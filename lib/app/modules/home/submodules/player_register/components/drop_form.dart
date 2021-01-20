import 'package:cadu_fifa/app/modules/home/submodules/player_register/player_register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DropForm extends StatefulWidget {
  @override
  _DropFormState createState() => _DropFormState();
}

class _DropFormState extends State<DropForm> {
  String dropdownValue = 'ATA';

  final PlayerRegisterController controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Posição:'),
        SizedBox(width: 20),
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
              controller.changePlayerPosition(dropdownValue);
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
