import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: FaIcon(
            size: 32,
            FontAwesomeIcons.linkedin,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () {
            // Add LinkedIn URL here

            launchUrl(
                Uri.parse('https://www.linkedin.com/in/rohit-chandra-jan13/'));
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.github,
            size: 32,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () {
            // Add GitHub URL here
            launchUrl(Uri.parse("https://github.com/Rohit-Chandra-007"));
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.instagram,
            size: 32,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () {
            launchUrl(
                Uri.parse('https://www.instagram.com/i_m_rohit_chanaliya/'));
          },
        ),
      ],
    );
  }
}
