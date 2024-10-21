import 'package:flutter/material.dart';

import 'package:flutter_web_app/portfolio_screen.dart';

import 'constant/app_theme.dart';

void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(context),
      builder: (context, child) {
        return const PortfolioScreen();
      },
    );
  }
}
