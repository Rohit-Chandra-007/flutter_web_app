import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TabFooterSection extends StatelessWidget {
  const TabFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                'Copyright © Rohit Chandra · 2024',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  onPressed: () {
                    // Add LinkedIn URL here
                    launchUrl(Uri.parse(
                      'https://www.linkedin.com/in/rohit-chandra-jan13/'));
                  },
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.github,
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
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  onPressed: () {
                     launchUrl(Uri.parse(
                      'https://www.instagram.com/i_m_rohit_chanaliya/'));
                  },
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
