import 'package:evilcraft_web/pages/players.dart';
import 'package:evilcraft_web/routes.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import './pages/home.dart';
import 'components/theme.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EvilCraft',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //routes: {
      //  '/': (context) => HomePage(title: "EvilCraft"),
      //  '/players': (context) => PlayersPage(title: 'EvilCraft'),
      //},
      onGenerateRoute: (settings){
        late Widget page;
        switch (settings.name){
          case homePage:
            page = HomePage(title: "EvilCraft");
            break;
          case playersPage:
            page = PlayersPage(title: "EvilCraft");
            break;
        }
        return MaterialPageRoute<dynamic>(
            builder: (context) {
              return page;
            },
          settings: settings,
        );
      },
    );
  }
}


