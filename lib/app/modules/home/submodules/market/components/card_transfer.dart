import 'package:flutter/material.dart';

class CardTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 0, left: 0, right: 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://cdn.futbin.com/content/fifa21/img/clubs/73.png',
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.double_arrow,
                          color: Colors.red,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://cdn.futbin.com/content/fifa21/img/players/190871.png?v=22',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.double_arrow,
                          color: Colors.green,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://cdn.futbin.com/content/fifa21/img/clubs/241.png',
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Neymar Junior',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'PE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(1.0),
                              ),
                              border: Border.all(color: Colors.grey[600]),
                            ),
                            child: Text(
                              '91',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'DK\$ 1.900.000,00',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Text('Neymar Junior'),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Detalhes'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
