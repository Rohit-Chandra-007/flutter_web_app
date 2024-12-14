import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard(
      {super.key,
      required this.iconPath,
      required this.years,
      required this.title});
  final String iconPath;
  final String years;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 200,
      decoration: BoxDecoration(
        color: title == "Work" ? AppColors.primary : null,
        borderRadius: BorderRadius.circular(12),
        border: title == "Work"
            ? null
            : Border.all(
                color: Theme.of(context).colorScheme.onPrimary, width: 1),
      ),
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconPath == AppIcons.github
              ? SvgPicture.asset(
                  iconPath,
                  height: 64,
                  width: 64,
                )
              : SvgPicture.asset(
                  iconPath,
                  height: 72,
                  width: 72,
                ),
          const SizedBox(height: 8),
          Text(
            years,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.textColor),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: AppColors.textColor),
          ),
        ],
      ),
    );
  }
}
