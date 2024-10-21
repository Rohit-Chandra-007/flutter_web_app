import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const ResponsiveWidget({super.key, 
    required this.mobile,
    required this.tablet,
    required this.web,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 1366;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1366;

  @override
  Widget build(BuildContext context) {
    if (isWeb(context)) {
      return web;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
