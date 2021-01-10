import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 32, right: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ELENCO',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Lista de Jogadores',
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                spreadRadius: 1.0,
                                blurRadius: 8.0,
                              )
                            ],
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey[900],
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          ClipOval(
                            child: Image.network(
                              'https://cdn.futbin.com/content/fifa21/img/players/190871.png?v=22',
                              fit: BoxFit.contain,
                              height: 55,
                              width: 55,
                            ),
                          ),
                          SizedBox(width: 32),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Neymar Junior',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Neymar',
                                  style: TextStyle(
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'PE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.5,
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => Divider(height: 40),
                    itemCount: 10,
                    shrinkWrap: true,
                    controller: ScrollController(keepScrollOffset: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
