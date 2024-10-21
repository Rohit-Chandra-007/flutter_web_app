import 'package:flutter/material.dart';
import 'package:flutter_web_app/sections/home/widget/action_section.dart';
import 'package:flutter_web_app/sections/home/widget/avatar_section.dart';
import 'package:flutter_web_app/sections/home/widget/name_section.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NameSection(),
        AvatarSection(),
        ActionSection(),
      ],
    );
  }
}
