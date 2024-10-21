import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebFooterSection extends StatelessWidget {
  const WebFooterSection({super.key});

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
