import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/ui/portfolio/mobile/portfolio_section.dart';
import 'package:flutter_web_app/ui/portfolio/tab/portfolio_section.dart';
import 'package:flutter_web_app/ui/portfolio/web/portfolio_section.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        mobile: MobilePortfolioSection(),
        tablet: TabPortfolioSection(),
        web: WebPortfolioSection());
  }
}
