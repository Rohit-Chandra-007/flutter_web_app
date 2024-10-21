import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_icons.dart';
import 'package:flutter_web_app/constant/app_images.dart';
import 'package:flutter_web_app/sections/recommendation/mobile/recommendation.dart';
import 'package:flutter_web_app/sections/recommendation/tab/recommendation.dart';
import 'package:flutter_web_app/sections/recommendation/web/recommendation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: MobileRecommendationSection(),
      tablet: TabRecommendationSection(),
      web: WebRecommendationSection(),
    );
  }
}
