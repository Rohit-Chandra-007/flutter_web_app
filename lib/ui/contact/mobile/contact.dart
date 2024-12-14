import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileContactSection extends StatelessWidget {
  const MobileContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OutlinedButton.icon(
              onPressed: () {
                // Add WhatsApp contact functionality here
              },
              icon: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              label: Text('''Let's Chat''',
                  style: Theme.of(context).textTheme.titleMedium),
              style: OutlinedButton.styleFrom(
                side:
                    BorderSide(color: Theme.of(context).colorScheme.onPrimary),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(width: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppIcons.sendEmail,
                  width: 24,
                  height: 24,
                ),
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
                Row(
                  children: [
                    Text(
                      'chandrarohit91@gmail.com',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset(
                      AppIcons.copyIcon,
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}
