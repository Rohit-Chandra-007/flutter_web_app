import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';

class TabHeader extends StatelessWidget {
  const TabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: _buildHeader(context),
    );
  }
}

Widget _buildHeader(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SvgPicture.asset(
        AppIcons.appLogo,
      ),
      Row(
        children: [
          _buildNavItem("Home", context),
          _buildNavItem("About Me", context),
          _buildNavItem("Portfolio", context),
          _buildNavItem("Skills", context),
          _buildNavItem("Career", context),
          _buildNavItem("Recommended", context),
          _buildNavItem("Contact", context),
        ],
      ),
    ],
  );
}

Widget _buildNavItem(String title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Text(
      title,
      style: title != "Home"
          ? Theme.of(context).textTheme.bodyMedium
          : Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.onPrimary,
                fontWeight: FontWeight.w700,
              ),
    ),
  );
}
