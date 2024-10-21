import 'package:flutter/material.dart';

import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          width: ResponsiveWidget.isMobile(context)?125:null,
          padding:  EdgeInsets.all(12),
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
         SizedBox(height: 8),
        Text(
          'Rohit \nChandra',
          style: Theme.of(context).textTheme.displayLarge,
        ),
         SizedBox(height: 8),
        Text(
          'Front-end developer · Flutter Developer',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
         SizedBox(height: 24),
        if(!ResponsiveWidget.isMobile(context)) Row(
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
             SizedBox(width: 16),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.github,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onPressed: () {
                // Add GitHub URL here
              },
            ),
             SizedBox(width: 16),
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
