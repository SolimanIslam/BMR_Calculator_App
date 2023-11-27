import 'package:bmr_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:bmr_calculator/screens/input_page.dart';
import 'package:bmr_calculator/constants.dart';

void main() {
  runApp(const BmrApp());
}

class BmrApp extends StatelessWidget {
  const BmrApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
          appBarTheme: const AppBarTheme(color: kAppbarThemeColor)),
      home: InputPage(),
    );
  }
}
