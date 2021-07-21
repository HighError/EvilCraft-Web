import 'dart:html' as html;

import 'package:evilcraft_web/widgets/translate_on_hover.dart';
import 'package:flutter/material.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: this,
    );
  }

  Widget get MoveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}
