// ignore_for_file: prefer_const_constructors, unused_import

import 'package:cleanerinternday2/IntroScreen/splaceScreen.dart';
import 'package:cleanerinternday2/IntroScreen/welcome1.dart';
import 'package:cleanerinternday2/Screen/AntiVirus/anitvirusScreen.dart';
import 'package:cleanerinternday2/Screen/DuplicatephotoCleaner/Duplicate_PhotoCleaner.dart';
import 'package:cleanerinternday2/Screen/FileManagement/fileManagement_Screen.dart';
import 'package:cleanerinternday2/Screen/FileManagement/file_management.dart';
import 'package:cleanerinternday2/Screen/NotificationClean/Notification_cleaner.dart';
import 'package:cleanerinternday2/Screen/app_Manager.dart';
import 'package:cleanerinternday2/Screen/home.dart';
import 'package:cleanerinternday2/Screen/JunkClean/junkHome_Screen.dart';
import 'package:cleanerinternday2/Screen/notification_Screen.dart';
import 'package:cleanerinternday2/SettingsScreen/oneTapScreen.dart';
import 'package:cleanerinternday2/ThemesController/themes.dart';
import 'package:flutter/material.dart';
import 'Screen/DeepClean/deepClean.dart';
import 'Screen/completeScreen_Scan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.themeDark,
      theme: MyThemes.themeWhite,
      home:SplaceScreen(),
    );
  }
}
