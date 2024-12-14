import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/ui/footer/mobile/footer.dart';
import 'package:flutter_web_app/ui/footer/tab/footer.dart';
import 'package:flutter_web_app/ui/footer/web/footer.dart';


class FooterSection extends StatelessWidget {
  const FooterSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: MobileFooter(),
      tablet: TabFooterSection(),
      web: WebFooterSection(),
    );
  }
}
