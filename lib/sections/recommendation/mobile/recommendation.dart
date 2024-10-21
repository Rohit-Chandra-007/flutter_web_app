import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/constant/app_images.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileRecommendationSection extends StatelessWidget {
  const MobileRecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const LabelChip(
            title: '💬 Recommendations',
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                'In testimony',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1),
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.backwardArrow),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1),
                    ),
                    child: Center(
                      child: SvgPicture.asset(AppIcons.backwardArrow),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 300,
            child: ListView(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              scrollDirection: Axis.horizontal,
              children: const [
                TestimonyCard(
                  testimony:
                      'Washington is always studying and learning, seeking to improve what he does. That is his best quality. He is always pursuing his goals with focus and organisation. Moreover, technically, in what he sets out to do, he does it well. Always!',
                  name: 'Romário Lima',
                  position: 'Computer Engineer',
                  imageUrl: AppImages.profile,
                ),
                SizedBox(width: 16),
                TestimonyCard(
                  testimony:
                      'Washington is always studying and learning, seeking to improve what he does. That is his best quality. He is always pursuing his goals with focus and organisation. Moreover, technically, in what he sets out to do, he does it well. Always!',
                  name: 'Romário Lima',
                  position: 'Computer Engineer',
                  imageUrl: AppImages.profile,
                ),
                SizedBox(width: 16),
                TestimonyCard(
                  testimony:
                      'Washington is always studying and learning, seeking to improve what he does. That is his best quality. He is always pursuing his goals with focus and organisation. Moreover, technically, in what he sets out to do, he does it well. Always!',
                  name: 'Romário Lima',
                  position: 'Computer Engineer',
                  imageUrl: AppImages.profile,
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

class TestimonyCard extends StatelessWidget {
  final String testimony;
  final String name;
  final String position;
  final String imageUrl;

  const TestimonyCard({
    super.key,
    required this.testimony,
    required this.name,
    required this.position,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FaIcon(
            FontAwesomeIcons.quoteRight,
            size: 32,
            color: AppColors.onPrimary,
          ),
          const SizedBox(height: 8),
          Text(
            testimony,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imageUrl),
                radius: 24,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    position,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
