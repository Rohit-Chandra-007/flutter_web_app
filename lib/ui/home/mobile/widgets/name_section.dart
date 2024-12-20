import 'package:flutter/material.dart';

import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileNameSection extends StatelessWidget {
  const MobileNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            '👋 Greetings!',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Rohit \nChandra',
          style: Theme.of(context).textTheme.headlineLarge,
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
                  // Add LinkedIn URL here
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
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: () {
                  // Add Behance URL here
                },
              ),
            ],
          )
      ],
    );
  }
}
