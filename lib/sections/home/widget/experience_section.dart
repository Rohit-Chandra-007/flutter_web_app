import 'package:flutter/material.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/sections/home/widget/experience_card.dart';
import 'package:flutter_web_app/sections/home/widget/skill_tag.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExperienceCard(
                iconPath: AppIcons.codeIcon,
                years: '3 Years as a',
                title: 'Programmer',
              ),
              SizedBox(width: 16),
              ExperienceCard(
                iconPath: AppIcons.projectIcon,
                years: '7 Year of',
                title: 'Work',
              ),
              SizedBox(width: 16),
              ExperienceCard(
                iconPath: AppIcons.designIcon,
                years: '4 Year as a',
                title: 'Designer',
              ),
            ],
          ),
          const SizedBox(height: 32),
          Container(
            width: 790,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SkillTag(
                  prefix: "Developer",
                  title: "Front-end",
                ),
                SizedBox(width: 16),
                SkillTag(
                  prefix: "Donzen of Project and",
                  title: "Experience",
                ),
                SizedBox(width: 16),
                SkillTag(
                  prefix: "Designer Freelancer",
                  title: "UI . UX",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
