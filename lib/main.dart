import 'package:evilcraft_web/routing/route_names.dart';
import 'package:evilcraft_web/utils/no_animation_page.dart';
import 'package:evilcraft_web/utils/theme.dart';
import 'package:evilcraft_web/view/layout_template/layout_template.dart';
import 'package:evilcraft_web/view/map/map_view.dart';
import 'package:evilcraft_web/view/permissions/permissions_view.dart';
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
      builder: (context, child) => child!,
      routerDelegate: routeMaster,
      routeInformationParser: RoutemasterParser(),

    );
  }
}

final routes = RouteMap(routes: {
  HomeRoute: (_) =>
      NoAnimationPage(child: LayoutTemplate(fullScreen: false, child: HomeView())),
  PlayersRoute: (_) =>
      NoAnimationPage(child: LayoutTemplate(fullScreen: false, child: PlayersView())),
  PermissionsRoute: (_) =>
      NoAnimationPage(child: LayoutTemplate(fullScreen: false, child: PermissionsView())),
  MapRoute: (_)  =>
      NoAnimationPage(child: LayoutTemplate(fullScreen: false, child: MapView())),
});

final routeMaster = RoutemasterDelegate(
  routesBuilder: (context) => routes,
);


