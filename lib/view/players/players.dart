import 'package:evilcraft_web/widgets/player_widget/player_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PlayersView extends StatelessWidget {
  const PlayersView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    int countItems = 0;
    switch (deviceType) {
      case DeviceScreenType.desktop:
        countItems = 6;
        break;
      case DeviceScreenType.mobile:
        countItems = 2;
        break;
      case DeviceScreenType.tablet:
        countItems = 3;
        break;
    }
    return Container(
      child: Column(
        children: [
          Text(
            "Гравці серверу",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              crossAxisCount: countItems,
              children: [
                PlayerWidget(nickname: 'HighError', colorBorder: Color(0xff5620c0),),
                PlayerWidget(nickname: 'Tretonrule'),
                PlayerWidget(nickname: 'Doctor1202'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
