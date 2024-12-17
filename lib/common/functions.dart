import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const kDuration = Duration(milliseconds: 600);

Future<void> openUrlLink(String url) async {
  await launchUrl(Uri.parse(url));
}

scrollToSection(BuildContext context, GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: kDuration,
    curve: Curves.easeInOut,
  );
}
