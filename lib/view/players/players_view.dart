import 'package:evilcraft_web/view/players/players_list.dart';
import 'package:evilcraft_web/widgets/title/title.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PlayersView extends StatelessWidget {
  const PlayersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      int itemInRow = 6;

      switch (sizingInformation.deviceScreenType) {
        case DeviceScreenType.mobile:
          itemInRow = 2;
          break;
        case DeviceScreenType.tablet:
          itemInRow = 3;
          break;
        case DeviceScreenType.desktop:
          itemInRow = 6;
          break;
      }

      return Column(
        children: [
          TitleWidget(title: 'Учасники сервера'),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              crossAxisCount: itemInRow,
              children: playersList,
            ),
          ),
        ],
      );
    });
  }
}
