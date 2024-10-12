import 'package:flutter/material.dart';
import 'package:flutter_web_app/sections/header/header.dart';
import 'package:flutter_web_app/sections/home/home.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Header(), HomeSection()],
            ),
          ),
        ),
      ),
    );
  }
}
