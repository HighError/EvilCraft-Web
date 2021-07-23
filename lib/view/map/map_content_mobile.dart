import 'package:evilcraft_web/widgets/title/title.dart';
import 'package:flutter/material.dart';

class MapContentMobile extends StatelessWidget {
  const MapContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TitleWidget(title: 'Веб карта не підтримує мобільні пристрої\nОчікуйте оновлення'),
    );
  }
}
