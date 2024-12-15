import 'package:flutter/material.dart';

import 'package:flutter_web_app/common/responsive_widget.dart';

import 'package:flutter_web_app/ui/recommendation/mobile/recommendation.dart';
import 'package:flutter_web_app/ui/recommendation/tab/recommendation.dart';
import 'package:flutter_web_app/ui/recommendation/web/recommendation.dart';


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
