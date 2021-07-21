import 'package:evilcraft_web/datamodels/navbar_item_model.dart';
import 'package:evilcraft_web/main.dart';
import 'package:evilcraft_web/widgets/navbar_item/navbar_item_desktop.dart';
import 'package:evilcraft_web/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:evilcraft_web/extensions/hover_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;

  const NavBarItem(this.title, this.navigationPath, {required this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openEndDrawer();
        routeMaster.push(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(model: model,),
          mobile: NavBarItemMobile(model: model,),
        ).showCursorOnHover.MoveUpOnHover,
      ),
    );
  }
}
