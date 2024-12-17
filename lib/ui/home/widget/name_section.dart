import 'package:flutter/material.dart';

import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NameSection extends StatelessWidget {
  const NameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: ResponsiveWidget.isMobile(context) ? 125 : null,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              '👋 Greetings!',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Rohit \nChandra',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 8),
        Text(
          'Front-end developer · Flutter Developer',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 24),
        if (!ResponsiveWidget.isMobile(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: () {
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
          )
      ],
    );
  }
}
