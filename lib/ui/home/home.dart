import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_layout.dart';
import 'package:flutter_web_app/ui/home/mobile/home_mobile.dart';
import 'package:flutter_web_app/ui/home/tablet/home_tab.dart';
import 'package:flutter_web_app/ui/home/web/home_web.dart';

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
