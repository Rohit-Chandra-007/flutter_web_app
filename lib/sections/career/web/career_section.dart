import 'package:flutter/material.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/constant/app_colors.dart';

class WebCareerSection extends StatelessWidget {
  const WebCareerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const LabelChip(
            title: '💼 Career',
          ),
          const SizedBox(height: 16),
          Text(
            'Journey up to this point',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 32),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CareerWidget(),
              ),
              SizedBox(
                width: 80,
              ),
              Expanded(
                child: CareerWidget(),
              ),
            ],
          ),
        ],
      ),
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
  const CareerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Professional Area',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: 8),
        Text(
          '2022 · Present',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 24,
              ),
        ),
        const Column(
          children: [
            CareerCard(
              title: 'Desenvolvedor Front-end na Ensinio',
              description:
                  'Desenvolvimento de features na aplicação principal e site, com React Js e Typescript, além do auxílio de outras tecnologias como Next, Styled Components e padrões de arquitetura.',
              duration: '1 ano e 7 meses',
              dateRange: 'Abril/2021 · Atualmente',
            ),
            SizedBox(height: 16),
            CareerCard(
              title: 'Designer na Viralizzi',
              description:
                  'Disponibilizando serviços para mídias digitais na Viralizzi como Designer.',
              duration: '3 meses',
              dateRange: 'Janeiro/2021 · Abril/2021',
            ),
          ],
        ),
      ],
    );
  }
}
