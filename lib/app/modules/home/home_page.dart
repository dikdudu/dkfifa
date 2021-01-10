import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'submodules/market/market_module.dart';
import 'submodules/news/news_module.dart';
import 'submodules/team/team_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "DIRK FIFA 21"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
            color: Colors.black54,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.black54,
          ),
        ],
      ),
      body: PageView(
        controller: controller.pageViewController,
        children: [
          RouterOutlet(module: TeamModule()),
          RouterOutlet(module: NewsModule()),
          RouterOutlet(module: MarketModule()),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
              currentIndex: controller.pageViewController?.page?.round() ?? 1,
              selectedItemColor: Colors.black,
              onTap: (index) {
                controller.pageViewController.jumpToPage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Meu Time',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.filter_list),
                  label: 'Noticias',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.whatshot),
                  label: 'Mercado',
                ),
              ]);
        },
      ),
    );
  }
}
