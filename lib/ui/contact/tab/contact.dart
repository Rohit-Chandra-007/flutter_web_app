import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/functions.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/constant/app_keys.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabContactSection extends StatelessWidget {
  const TabContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const LabelChip(
            title: '📬 Contacts',
          ),
          const SizedBox(height: 16),
          Text(
            "Let's chat!",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(
                onPressed: () {
                  // Add WhatsApp contact functionality here
                  launchWhatsapp();
                },
                icon: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                label: Text('''Let's Chat''',
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
              const SizedBox(width: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.sendEmail),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Email:",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: AppColors.onPrimaryContainer),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'chandrarohit91@gmail.com',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SvgPicture.asset(AppIcons.copyIcon),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              scrollToSection(context, AppKeys.homeKey);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Back to top',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColors.onPrimary,
                      ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_upward,
                  color: AppColors.onPrimary,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
