import 'package:evilcraft_web/widgets/centered_view/centered_view.dart';
import 'package:evilcraft_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:evilcraft_web/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget? child;
  final bool fullScreen;

  const LayoutTemplate({Key? key, required this.child, required this.fullScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (fullScreen){
      return Container(child: child!,);
    }
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
                child: child!,
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text(
                  'EvilCraft © 2021\nDevelop by HighError special for EvilCraft',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

