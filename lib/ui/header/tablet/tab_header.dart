import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/functions.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/constant/app_keys.dart';

class TabHeader extends StatefulWidget {
  const TabHeader({
    super.key,
  });

  @override
  State<TabHeader> createState() => _TabHeaderState();
}

class _TabHeaderState extends State<TabHeader> {
  String selectedItem = "Home";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: _buildHeader(context),
    );
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
            _buildNavItem("Home", context, AppKeys.homeKey),
            _buildNavItem("About Me", context, AppKeys.aboutMeKey),
            _buildNavItem("Portfolio", context, AppKeys.portfolioKey),
            _buildNavItem("Skills", context, AppKeys.skillsKey),
            _buildNavItem("Career", context, AppKeys.careerKey),
            _buildNavItem("Recommended", context, AppKeys.recommendedKey),
            _buildNavItem("Contact", context, AppKeys.contactKey),
          ],
        ),
      ],
    );
  }

  Widget _buildNavItem(String title, BuildContext context, GlobalKey key) {
    final isSelected = selectedItem == title;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: TextButton(
        onPressed: () {
          setState(() {
            selectedItem = title;
          });
          scrollToSection(context, key);
        },
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isSelected ? AppColors.onPrimary : null,
                fontWeight: isSelected ? FontWeight.w700 : null,
              ),
        ),
      ),
    );
  }
}
