import 'package:evilcraft_web/routing/route_names.dart';
import 'package:evilcraft_web/routing/router.dart';
import 'package:evilcraft_web/utils/theme.dart';
import 'package:evilcraft_web/view/layout_template/layout_template.dart';
import 'package:evilcraft_web/view/players/players.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:url_strategy/url_strategy.dart';
import 'view/home/home_view.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EvilCraft',
      theme: theme,
      builder: (context, child) => LayoutTemplate(
        child: child!,
      ),
      navigatorKey: NavigationService.navigationKey,
      onGenerateRoute: (RouteSettings settings){
        switch (settings.name){
          case '/':
            return MaterialPageRoute(builder:(context) => HomeView());
          case '/players':
            return MaterialPageRoute(builder:(context) => PlayersView());
        }
      },
      initialRoute: HomeRoute,
      //routes: {
      //  HomeRoute: (context) => LayoutTemplate(child: HomeView()),
      //  PlayersRoute: (context) => LayoutTemplate(child: PlayersView()),
      //},
    );
  }
}