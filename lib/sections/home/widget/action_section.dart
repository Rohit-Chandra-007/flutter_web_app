import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            // Add download CV functionality here
          },
          child: Text(
            'Download CV \u2B07',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {
            // Add WhatsApp contact functionality here
          },
          icon: FaIcon(
            FontAwesomeIcons.whatsapp,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          label: Text('''Let's talk''',
              style: Theme.of(context).textTheme.labelSmall),
          style: OutlinedButton.styleFrom(
            side: BorderSide(
                color: Theme.of(context).colorScheme.onPrimaryContainer),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ],
    );
  }
}
