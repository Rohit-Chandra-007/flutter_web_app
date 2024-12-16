import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/responsive_widget.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/models/journey_model.dart';

class CareerCard extends StatelessWidget {
  final String title;
  final String description;
  final String duration;
  final String dateRange;

  const CareerCard({
    super.key,
    required this.title,
    required this.description,
    required this.duration,
    required this.dateRange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                duration,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 18,
                    ),
              ),
              Text(
                dateRange,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 18, color: AppColors.onPrimaryContainer),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CareerWidget extends StatelessWidget {
  const CareerWidget(
      {super.key, required this.title, required this.year, required this.list});
  final String title;
  final String year;
  final List<Journey> list;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768; // Standard mobile breakpoint

    return SizedBox(
      width: isMobile
          ? screenWidth * 0.9 // 90% width on mobile
          : screenWidth * 0.4, // 40% width on desktop
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: ResponsiveWidget.isMobile(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: isMobile ? 24 : 32, // Smaller font on mobile
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: isMobile ? 4 : 8),
          Text(
            '$year · Present',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: isMobile ? 18 : 24,
                ),
          ),
          SizedBox(height: isMobile ? 16 : 32),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: list
                .map((e) => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: isMobile ? 4.0 : 8.0,
                        horizontal: isMobile ? 8.0 : 0.0,
                      ),
                      child: CareerCard(
                        title: e.title,
                        description: e.description,
                        duration: e.duration,
                        dateRange: e.dateRange,
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
