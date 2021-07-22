import 'package:evilcraft_web/routing/route_names.dart';
import 'package:evilcraft_web/utils/theme.dart';
import 'package:evilcraft_web/view/layout_template/layout_template.dart';
import 'package:evilcraft_web/view/players/players_view.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:url_strategy/url_strategy.dart';

import 'view/home/home_view.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'EvilCraft',
      theme: theme,
      builder: (context, child) => LayoutTemplate(child: child!),
      routerDelegate: routeMaster,
      routeInformationParser: RoutemasterParser(),
    );
  }
}

final routes = RouteMap(routes: {
  HomeRoute: (_) => MaterialPage(child: HomeView()),
  PlayersRoute: (_) => MaterialPage(child: PlayersView()),
});

final routeMaster = RoutemasterDelegate(
  routesBuilder: (context) => routes,
);
