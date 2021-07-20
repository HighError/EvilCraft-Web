import 'package:evilcraft_web/components/appBar.dart';
import 'package:flutter/material.dart';

class PlayersPage extends StatefulWidget {
  const PlayersPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _PlayersPageState createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBarCustom()
        ],
      ),
    );
  }
}
