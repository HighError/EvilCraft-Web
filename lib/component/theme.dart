import 'package:flutter/material.dart';
import 'vars.dart';

ThemeData theme() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(PublicVars.primaryColor),
    );

TextStyle title() => TextStyle(fontFamily: 'Vollkorn', fontSize: 30.0);
TextStyle titleButton() => TextStyle(color: Color(PublicVars.primaryColor));
