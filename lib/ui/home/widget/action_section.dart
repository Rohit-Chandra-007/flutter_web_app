import 'package:flutter/material.dart';

import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isMobile(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                TextButton(
                  onPressed: () {
                    // Add download CV functionality here
                  },
                  child: Text(
                    'Download CV \u2B07',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 16),
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
                    side: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimary),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ])
        : Column(
            children: [
              TextButton(
                onPressed: () {
                  // Add download CV functionality here
                },
                child: Text(
                  'Download CV \u2B07',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 16),
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
                  side: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimary),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          );
  }
}
