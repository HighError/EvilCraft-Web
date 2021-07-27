import 'package:evilcraft_web/widgets/title/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HtmlWidget(
        '<iframe src="https://play.eviloma.com/map"></iframe>',
        factoryBuilder: () => WebMap(),
      ),
    );
  }
}

class WebMap extends WidgetFactory with WebViewFactory {}