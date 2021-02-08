import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'news_controller.dart';

class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({Key key, this.title = "News"}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends ModularState<NewsPage, NewsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          children: [
            // CardNews(),
            Center(
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Text(
                      'Over'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Valores'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '77',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    Text(
                      'DK\$ 50.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '78',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    Text(
                      'DK\$ 60.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '79',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    Text(
                      'DK\$ 70.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '80',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    Text(
                      'DK\$ 90.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '81',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    Text(
                      'DK\$ 100.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '82',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    Text(
                      'DK\$ 160.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '83',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    Text(
                      'DK\$ 210.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '84',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    Text(
                      'DK\$ 270.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '85',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    Text(
                      'DK\$ 330.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '86',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    Text(
                      'DK\$ 500.000,00',
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
