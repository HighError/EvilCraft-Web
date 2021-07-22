import 'package:evilcraft_web/routing/route_names.dart';
import 'package:flutter/material.dart';

import '../navbar_item/navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Головна', HomeRoute, icon: Icons.home,),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Учасники', PlayersRoute, icon: Icons.person,),
            ],
          ),
        ],
      ),
    );
  }
}
