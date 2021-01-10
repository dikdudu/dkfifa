import 'package:flutter/material.dart';

class CardNews extends StatelessWidget {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '10:00 - 11:00 AM',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Hoje, Janeiro 09',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://cdn.futbin.com/content/fifa21/img/players/190871.png?v=22',
                      fit: BoxFit.cover,
                      height: 55,
                      width: 55,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
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
                            'Man City',
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
                              '1 hr',
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
                    'R\$ 356.000.000,00',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
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
