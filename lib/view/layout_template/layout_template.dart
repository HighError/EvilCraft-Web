import 'package:evilcraft_web/locator.dart';
import 'package:evilcraft_web/routing/router.dart';
import 'package:evilcraft_web/services/navigation_service.dart';
import 'package:evilcraft_web/widgets/centered_view/centered_view.dart';
import 'package:evilcraft_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:evilcraft_web/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Color(0xff191919),
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
