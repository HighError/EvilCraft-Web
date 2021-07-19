import 'package:evilcraft_web/component/serverStatus.dart';
import 'package:evilcraft_web/component/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String onlinePlayersText = "Loading...";

  void updateOnlinePlayers() {
    getServerOnline().then((value) => {
          setState(() {
            onlinePlayersText = value;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    updateOnlinePlayers();
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Background.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text('Evilcraft', style: title()),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Головна',
                      style: titleButton(),
                    )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Учасники',
                      style: titleButton(),
                    )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              ],
            ),
            body: Center(
              child: Container(
                width: 300,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
