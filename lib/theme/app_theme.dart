

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/constants.dart';

class AppTheme {

  static final theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
    )
  );
}