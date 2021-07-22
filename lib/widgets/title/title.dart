import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 30
                : 40;

        return Text(
          title,
          style: TextStyle(
            fontSize: titleSize,
          ),
        );
      },
    );
  }
}
