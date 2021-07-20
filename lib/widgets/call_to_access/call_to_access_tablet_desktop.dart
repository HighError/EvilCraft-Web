import 'package:evilcraft_web/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CallToAccessTabletDesktop extends StatelessWidget {
  final String title;

  const CallToAccessTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
