import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServerInformation extends StatelessWidget {
  const ServerInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  'EvilCraft\nСезон 2',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: titleSize,
                  ),
                  textAlign: textAlignment,
                  textWidthBasis: TextWidthBasis.parent,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Приватний сервер майнкрафт без модів. Ванільне виживання з RPG складовою, без приватів та гріфу.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              ),
            ],
          ),
        );
      },
    );
  }
}
