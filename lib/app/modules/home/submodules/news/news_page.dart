import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/card_news.dart';
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
            Center(
              child: Container(
                child: CardNews(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
