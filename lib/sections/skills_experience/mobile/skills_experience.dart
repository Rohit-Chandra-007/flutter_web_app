import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_icons.dart';

class MobileSkillsWidget extends StatelessWidget {
  const MobileSkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const LabelChip(
            title: '👨‍💻 Skills . Experiences',
          ),
          const SizedBox(height: 24),
          Text(
            'Technologies and Skills',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 60),
          Text(
            'Techs that I use every day',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 24,
                ),
          ),
          const SizedBox(height: 48),
          SizedBox(
            height: 200,
            child: ListView(
              physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast,
              ),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                TechIcon(asset: AppIcons.flutter),
                TechIcon(asset: AppIcons.dart),
                TechIcon(asset: AppIcons.firebase),
                TechIcon(asset: AppIcons.figma),
                TechIcon(asset: AppIcons.git),
                TechIcon(asset: AppIcons.github),
                TechIcon(asset: AppIcons.gitlab),
                TechIcon(asset: AppIcons.postman),
                TechIcon(asset: AppIcons.bloc),
              ],
            ),
          ),
          const SizedBox(height: 48),
          Text(
            'Other techs with which I have carried out projects',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 24,
                ),
          ),
          const SizedBox(height: 48),
          SizedBox(
            height: 200,
            child: ListView(
              physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast,
              ),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                TechIcon(asset: AppIcons.html),
                TechIcon(asset: AppIcons.css),
                TechIcon(asset: AppIcons.javascript),
                TechIcon(asset: AppIcons.react),
                TechIcon(asset: AppIcons.php),
                TechIcon(asset: AppIcons.mysql),
                TechIcon(asset: AppIcons.sqlite),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TechIcon extends StatelessWidget {
  final String asset;

  const TechIcon({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: SvgPicture.asset(
        asset,
        width: 64,
        height: 64,
      ),
    );
  }
}
