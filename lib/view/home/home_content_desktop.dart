import 'package:evilcraft_web/widgets/call_to_access/call_to_access.dart';
import 'package:evilcraft_web/widgets/server_information/server_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime(2021, 7, 26, 20, 00, 00).millisecondsSinceEpoch;
    return Row(
      children: [
        ServerInformation(),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'До старту сервера:',
                style: TextStyle(
                  fontSize: 31,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
              CountdownTimer(
                endTime: endTime,
                widgetBuilder: (_, CurrentRemainingTime? time) {
                  if (time == null) {
                    return Text(
                      'Сервер скоро стартує, або вже запущений',
                      style: TextStyle(
                        fontSize: 22,
                        height: 1.7,
                      ),
                      textAlign: TextAlign.center,
                    );
                  }
                  return timer(time);
                },
              ),
              SizedBox(height: 50),
              CallToAccess('Отримати доступ'),
            ],
          ),
        )
      ],
    );
  }
}

Text timer(CurrentRemainingTime time) {
  int? hours = time.hours;
  int? days = time.days;
  if (days != null && hours != null) hours += days*24;

  int? minutes = time.min;
  int? seconds = time.sec;

  String text = "";

  if(hours == null);
  else if (hours == 1)
    text += "$hours година";
  else if (hours >= 2 && hours <= 4)
    text += "$hours години";
  else if (hours >= 5 || hours == 0)
    text += "$hours годин";

  if(minutes == null);
  else if (minutes == 1)
    text += " $minutes хвилина";
  else if (minutes >= 2 && minutes <= 4)
    text += " $minutes хвилини";
  else if (minutes >= 5 || minutes == 0)
    text += " $minutes хвилин";

  if (seconds == null);
  else if (seconds == 1)
    text += " $seconds секунда";
  else if (seconds >= 2 && seconds <= 4)
    text += " $seconds секунди";
  else if (seconds >= 5 || seconds == 0)
    text += " $seconds секунд";

  return Text(
    text,
    style: TextStyle(
      fontSize: 22,
      height: 1.7,
    ),
    textAlign: TextAlign.center,
  );
}
