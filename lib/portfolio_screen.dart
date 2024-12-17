import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_app/bloc/portfolio_bloc.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/constant/app_keys.dart';

import 'package:flutter_web_app/ui/about_me/about_me_section.dart';
import 'package:flutter_web_app/ui/career/career_section.dart';
import 'package:flutter_web_app/ui/contact/contact.dart';
import 'package:flutter_web_app/ui/footer/footer.dart';
import 'package:flutter_web_app/ui/home/widget/experience_section.dart';
import 'package:flutter_web_app/ui/header/header.dart';
import 'package:flutter_web_app/ui/home/home.dart';
import 'package:flutter_web_app/ui/portfolio/portfolio_section.dart';
import 'package:flutter_web_app/ui/recommendation/recommendation.dart';
import 'package:flutter_web_app/ui/skills_experience/skills_experience.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  initState() {
    super.initState();
    loadData();
  }

  void loadData() {
    context.read<PortfolioBloc>().add(FetchPortfolioData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Add space for the floating header
                  const SizedBox(
                    height: 80, // Adjust based on your header height
                  ),
                  HomeSection(key: AppKeys.homeKey),
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
                  ProfileScreen(key: AppKeys.aboutMeKey),
                  PortfolioSection(key: AppKeys.portfolioKey),
                  SkillsScreen(key: AppKeys.skillsKey),
                  CareerScreen(key: AppKeys.careerKey),
                  RecommendationSection(key: AppKeys.recommendedKey),
                  ContactSection(key: AppKeys.contactKey),
                  FooterSection()
                ],
              ),
            ),
          ),

          // Floating Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(25),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Header(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
