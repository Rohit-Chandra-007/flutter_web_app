import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/constant/app_icons.dart';

class MobileAvatarSection extends StatelessWidget {
  const MobileAvatarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppIcons.avatar,
      height: 370,
      width: 350,
    );
  }
}