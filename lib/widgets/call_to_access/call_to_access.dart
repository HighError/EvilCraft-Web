import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:evilcraft_web/extensions/hover_extensions.dart';

import 'call_to_access_mobile.dart';
import 'call_to_access_tablet_desktop.dart';

import 'dart:html' as html;

class CallToAccess extends StatelessWidget {
  final String title;

  const CallToAccess(this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        html.window.open('https://forms.gle/WsPJamRN6zorMh76A', 'new tab');
      },
      child: ScreenTypeLayout(
        mobile: CallToAccessMobile(title),
        tablet: CallToAccessTabletDesktop(title),
      ).showCursorOnHover.MoveUpOnHover,
    );
  }
}
