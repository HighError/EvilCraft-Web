import 'package:flutter/material.dart';
import './pages/home.dart';
import 'components/theme.dart';

void main() {
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
      routes: {
        '/': (context) => HomePage(title: "EvilCraft"),
      },
    );
  }
}
