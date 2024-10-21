import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    );
  }
}
