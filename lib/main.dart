import 'package:evilcraft_web/utils/theme.dart';
import 'package:evilcraft_web/view/layout_template/layout_template.dart';
import 'package:flutter/material.dart';
import 'locator.dart';
import 'view/home/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EvilCraft',
      theme: theme,
      home: LayoutTemplate(),
    );
  }
}