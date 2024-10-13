import 'package:flutter/material.dart';
import 'package:flutter_web_app/constant/app_colors.dart';

class SkillTag extends StatelessWidget {
  const SkillTag({super.key, required this.prefix, required this.title});
  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            prefix,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.onPrimaryContainer),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
