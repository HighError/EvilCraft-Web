import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: SvgPicture.asset('assets/images/logo.svg'),
    );
  }
}
