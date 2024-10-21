import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/sections/skills_experience/mobile/skills_experience.dart';
import 'package:flutter_web_app/sections/skills_experience/tab/skills_experience.dart';
import 'package:flutter_web_app/sections/skills_experience/web/skills_experience.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: MobileSkillsWidget(),
      tablet: TabSkillsSection(),
      web: WebSkillsSection(),
    );
  }
}
