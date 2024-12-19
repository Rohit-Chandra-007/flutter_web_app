import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_web_app/bloc/portfolio_bloc.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';

import 'package:flutter_web_app/ui/portfolio/common_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class TabPortfolioSection extends StatelessWidget {
  const TabPortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const LabelChip(title: "🔗 Portfolio"),
          const SizedBox(height: 24),
          Text(
            'Work and Projects',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 80),
          BlocBuilder<PortfolioBloc, PortfolioState>(
            builder: (context, state) {
              if (state is PortfolioLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is PortfolioLoaded) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.75,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ProjectCard(project: state.projects[index]);
                  },
                );
              } else {
                return const Center(child: Text('Failed to load projects'));
              }
            },
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
launchUrl(Uri.parse("https://github.com/Rohit-Chandra-007"));
                },
                child: Text(
                  'View More my Github Project →',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

