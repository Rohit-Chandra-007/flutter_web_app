import 'package:flutter/material.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_images.dart';

class MobileBioSection extends StatelessWidget {
  const MobileBioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Image
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.hardEdge,
            children: [
              Container(
                width: 200,
                height: 240,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  color: AppColors.circularAvatarColor,
                  //borderRadius: BorderRadius.circular(100),
                  shape: BoxShape.circle,
                ),
              ),
              Positioned(
                top: 20,
                child: Image.asset(
                  AppImages.profile,
                  width: 400,
                  height: 350,
                  // fit: BoxFit.cover,
                ),
              )
            ],
          ),
          const SizedBox(height: 32),
          // Profile Details
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  '👋 About Me!',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(height: 16),
              Text('Rohit Chandra',
                  style: Theme.of(context).textTheme.displayMedium),
              const SizedBox(height: 16),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BioTextWidget(
                    bioText:
                        '''My name is Rohit Chandra, but you can just call me Chandra. Nice to meet you! For over 2 years developing and programming interfaces with Flutter, Dart, JavaScript and React JS. Graduated in Computer Science and Engineering from National Institute of Technology, Uttarakhand. Interests in Full-Stack Mobile and Web Development with Flutter, React JS, Dart and NodeJS.''',
                  ),
                  SizedBox(height: 32),
                  BioTextWidget(
                    bioText:
                        '''🚀 Trying to be a little better than yesterday every day.''',
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

class BioTextWidget extends StatelessWidget {
  final String bioText;
  const BioTextWidget({
    super.key,
    required this.bioText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      bioText,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.justify,
    );
  }
}
