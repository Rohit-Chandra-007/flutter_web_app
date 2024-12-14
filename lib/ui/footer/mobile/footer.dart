import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        children: [
          Row(
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
                  // Add Behance URL here
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Copyright © Rohit Chandra · 2024',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
