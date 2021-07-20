import 'package:evilcraft_web/components/appBar.dart';
import 'package:evilcraft_web/components/serverStatus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String onlinePlayersText = "Loading...";
  String serverVersionText = "Loading...";

  void updateOnlinePlayers() {
    getServerOnline().then((value) => {
          if (mounted)
            {
              setState(() {
                onlinePlayersText = value;
              })
            }
        });
    getServerVersion().then((value) => {
          if (mounted)
            {
              setState(() {
                serverVersionText = value;
              })
            }
        });
  }

  @override
  Widget build(BuildContext context) {
    updateOnlinePlayers();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Background.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          AppBarCustom(),
          Align(
            alignment: FractionalOffset.center,
            child: Container(
              width: 325,
              height: 175,
              decoration: BoxDecoration(
                color: Color.fromARGB(180, 0, 0, 0),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Статистика серверу',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          onlinePlayersText,
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                        Text(
                          'IP: play.eviloma.com',
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                        Text(
                          serverVersionText,
                          style: TextStyle(fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
