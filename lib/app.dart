import 'package:firstapp/design/themes.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: Themes.defaultTheme, home: const HomePage());
  }
}
