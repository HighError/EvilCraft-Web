import 'package:evilcraft_web/view/map/map_content_desktop.dart';
import 'package:evilcraft_web/view/map/map_content_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: MapContentDesktop(),
      mobile: MapContentMobile(),
    );
  }
}
