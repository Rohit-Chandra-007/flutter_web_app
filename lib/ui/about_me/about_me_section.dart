import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/ui/about_me/mobile/mobile_bio_section.dart';
import 'package:flutter_web_app/ui/about_me/tablet/tab_bio_section.dart';
import 'package:flutter_web_app/ui/about_me/web/web_bio_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        mobile: MobileBioSection(),
        tablet: TabBioSection(),
        web: WebBioSection());
  }
}
