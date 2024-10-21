import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_layout.dart';
import 'package:flutter_web_app/sections/home/mobile/home_mobile.dart';
import 'package:flutter_web_app/sections/home/tablet/home_tab.dart';
import 'package:flutter_web_app/sections/home/web/Home_web.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      web: HomeWeb(),
    );
  }
}
