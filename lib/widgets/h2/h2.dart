import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class H2Widget extends StatelessWidget {
  final String title;

  const H2Widget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double titleSize =
        sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 15
            : 20;

        return Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: titleSize,
          ),
        );
      },
    );
  }
}
