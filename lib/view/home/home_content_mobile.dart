import 'package:evilcraft_web/widgets/call_to_access/call_to_access.dart';
import 'package:evilcraft_web/widgets/server_information/server_information.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ServerInformation(),
        SizedBox(height: 100,),
        CallToAccess('Отримати доступ')
      ],
    );
  }
}
