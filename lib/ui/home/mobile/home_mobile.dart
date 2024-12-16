import 'package:flutter/material.dart';
import 'package:flutter_web_app/ui/home/mobile/widgets/action_widget.dart';
import 'package:flutter_web_app/ui/home/mobile/widgets/avatar_section.dart';
import 'package:flutter_web_app/ui/home/mobile/widgets/name_section.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MobileAvatarSection(),
          MobileNameSection(),
          MobileActionSection(),
        ],
      ),
    );
  }
}
