import 'package:evilcraft_web/widgets/call_to_access/call_to_access.dart';
import 'package:evilcraft_web/widgets/server_information/server_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime(2021, 7, 26, 20, 00, 00).millisecondsSinceEpoch;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ServerInformation(),
        SizedBox(height: 25),
        CallToAccess('Отримати доступ')
      ],
    );
  }
}
