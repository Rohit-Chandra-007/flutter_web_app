import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/ui/career/mobile/career_section.dart';
import 'package:flutter_web_app/ui/career/tab/career_section.dart';
import 'package:flutter_web_app/ui/career/web/career_section.dart';

class CareerScreen extends StatelessWidget {
  const CareerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        mobile: MobileCareerSection(),
        tablet: TabCareerSection(),
        web: WebCareerSection());
  }
}
