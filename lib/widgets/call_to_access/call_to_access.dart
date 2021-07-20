import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'call_to_access_mobile.dart';
import 'call_to_access_tablet_desktop.dart';

class CallToAccess extends StatelessWidget {
  final String title;

  const CallToAccess(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToAccessMobile(title),
      tablet: CallToAccessTabletDesktop(title),
    );
  }
}
