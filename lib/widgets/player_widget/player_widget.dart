import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PlayerWidget extends StatelessWidget {
  final String nickName;
  final bool skin;

  const PlayerWidget({Key? key, required this.nickName, required this.skin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double fontSizeNicknane = 0;
      switch (sizingInformation.deviceScreenType) {
        case DeviceScreenType.mobile:
          fontSizeNicknane = 16;
          break;
        case DeviceScreenType.tablet:
          fontSizeNicknane = 19;
          break;
        case DeviceScreenType.desktop:
          fontSizeNicknane = 21;
          break;
      }
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(10),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/players/${skin?nickName:"default"}.png',
                height: constraints.maxHeight * 0.6,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.1,
              ),
              Text(
                nickName,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: fontSizeNicknane,
                ),
              )
            ],
          );
        }),
      );
    });
  }
}
