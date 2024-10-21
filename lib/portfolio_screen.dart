import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';

import 'package:flutter_web_app/sections/about_me/about_me_section.dart';
import 'package:flutter_web_app/sections/career/career_section.dart';
import 'package:flutter_web_app/sections/contact/contact.dart';
import 'package:flutter_web_app/sections/footer/footer.dart';
import 'package:flutter_web_app/sections/home/widget/experience_section.dart';
import 'package:flutter_web_app/sections/header/header.dart';
import 'package:flutter_web_app/sections/home/home.dart';
import 'package:flutter_web_app/sections/portfolio/portfolio_section.dart';
import 'package:flutter_web_app/sections/recommendation/recommendation.dart';
import 'package:flutter_web_app/sections/skills_experience/skills_experience.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              const Header(),
              SizedBox(
                height: 15,
              ),
              const HomeSection(),
              if (!ResponsiveWidget.isMobile(context))
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
               const ExperienceSection(),
              if (!ResponsiveWidget.isMobile(context))
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
               const ProfileScreen(),
               const PortfolioSection(),
               const SkillsScreen(),
              // const CareerScreen(),
              // const RecommendationSection(),
              // const ContactSection(),
              // const FooterSection()
            ],
          ),
        ),
      ),
    );
  }
}
