import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/responsive_layout.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/ui/header/mobile/mobile_header.dart';
import 'package:flutter_web_app/ui/header/tablet/tab_header.dart';
import 'package:flutter_web_app/ui/header/web/web_header.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileHeader(),
      tablet: TabHeader(),
      web: WebHeader(),
    );
  }
}
