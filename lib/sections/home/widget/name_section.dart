import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NameSection extends StatelessWidget {
  const NameSection({super.key});

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
          child: Row(
            children: [
              Text(
                '👋 Greetings!',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
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
