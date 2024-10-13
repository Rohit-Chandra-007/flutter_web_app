import 'package:flutter/material.dart';
import 'package:flutter_web_app/sections/about_me/about_me_section.dart';
import 'package:flutter_web_app/sections/home/widget/experience_section.dart';
import 'package:flutter_web_app/sections/header/header.dart';
import 'package:flutter_web_app/sections/home/home.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Header(),
              const SizedBox(
                height: 15,
              ),
              const HomeSection(),
              Container(
                width: double.infinity,
                height: 2,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              const ExperienceSection(),
              Container(
                width: double.infinity,
                height: 2,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              const ProfileScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
