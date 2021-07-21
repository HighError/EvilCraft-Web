import 'package:evilcraft_web/datamodels/navbar_item_model.dart';
import 'package:flutter/material.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;
  NavBarItemTabletDesktop({required this.model});

  @override
  Widget build(
      BuildContext context,
      ) {
    return Text(
      model.title,
      style: TextStyle(fontSize: 18),
    );
  }
}