import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/ui/contact/mobile/contact.dart';
import 'package:flutter_web_app/ui/contact/tab/contact.dart';
import 'package:flutter_web_app/ui/contact/web/contact.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: MobileContactSection(),
      tablet: TabContactSection(),
      web: WebContactSection(),
    );
  }
}
