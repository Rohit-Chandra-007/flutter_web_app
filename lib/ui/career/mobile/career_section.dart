import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_colors.dart';

class MobileCareerSection extends StatelessWidget {
  const MobileCareerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        const LabelChip(
          title: '💼 Career',
        ),
        const SizedBox(height: 16),
        Text(
          'Journey up to this point',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 32),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CareerWidget(),
            SizedBox(
              width: 80,
            ),
             CareerWidget(),
          ],
        ),
      ],
    );
  }
}

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
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                duration,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12,
                    ),
              ),
              Text(
                dateRange,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 12, color: AppColors.onPrimaryContainer),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CareerWidget extends StatelessWidget {
  const CareerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Professional Area',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 16,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          '2022 · Present',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12,
              ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              itemBuilder: (context, index) {
                return const CareerCard(
                  title: 'Desenvolvedor Front-end na Ensinio',
                  description:
                      'Desenvolvimento de features na aplicação principal e site, com React Js e Typescript, além do auxílio de outras tecnologias como Next, Styled Components e padrões de arquitetura.',
                  duration: '1 ano e 7 meses',
                  dateRange: 'Abril/2021 · Atualmente',
                );
              }),
        ),
      ],
    );
  }
}
