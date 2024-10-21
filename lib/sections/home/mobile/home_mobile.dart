import 'package:flutter/material.dart';
import 'package:flutter_web_app/sections/home/mobile/widgets/action_widget.dart';
import 'package:flutter_web_app/sections/home/mobile/widgets/avatar_section.dart';
import 'package:flutter_web_app/sections/home/mobile/widgets/name_section.dart';
import 'package:flutter_web_app/sections/home/widget/action_section.dart';
import 'package:flutter_web_app/sections/home/widget/avatar_section.dart';
import 'package:flutter_web_app/sections/home/widget/name_section.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MobileAvatarSection(),
        MobileNameSection(),
        MobileActionSection(),
      ],
    );
  }
}
