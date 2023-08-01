// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyThemes {

  static final themeDark = ThemeData(
    scaffoldBackgroundColor: Colors.black12,
    colorScheme: ColorScheme.dark(),
  );

  static final themeWhite = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
  );
}