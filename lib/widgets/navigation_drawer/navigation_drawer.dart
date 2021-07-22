import 'package:evilcraft_web/constants/app_colors.dart';
import 'package:evilcraft_web/routing/route_names.dart';
import 'package:evilcraft_web/widgets/navbar_item/navbar_item.dart';
import 'package:flutter/material.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          NavBarItem('Головна', HomeRoute, icon: Icons.home,),
          NavBarItem('Учасники', PlayersRoute, icon: Icons.person,),
        ],
      ),
    );
  }
}
