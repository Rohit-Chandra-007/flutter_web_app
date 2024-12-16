import 'package:flutter/material.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileActionSection extends StatelessWidget {
  const MobileActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        TextButton(
          onPressed: () {
            // Add download CV functionality here
          },
          child: Text(
            'Download CV',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(width: 16),
        OutlinedButton.icon(
          onPressed: () {
            // Add WhatsApp contact functionality here
          },
          icon: FaIcon(
            FontAwesomeIcons.whatsapp,
            size: 24,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          label: Text('''Let's chat''',
              style: Theme.of(context).textTheme.titleMedium),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Theme.of(context).colorScheme.onPrimary),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
      ],
    );
  }
}
