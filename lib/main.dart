import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okey_araci/screens/home_screen.dart';
import 'package:okey_araci/theme/theme_constants.dart';
import 'package:okey_araci/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager = Get.put(ThemeManager());
    return MaterialApp(
      title: 'Okey Aracı',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
