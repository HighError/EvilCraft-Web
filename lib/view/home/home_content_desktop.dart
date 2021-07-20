import 'package:evilcraft_web/widgets/call_to_access/call_to_access.dart';
import 'package:evilcraft_web/widgets/server_information/server_information.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ServerInformation(),
        Expanded(
          child: Center(
            child: CallToAccess('Отримати доступ'),
          ),
        )
      ],
    );
  }
}
