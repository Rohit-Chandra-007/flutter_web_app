import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_app/bloc/portfolio_bloc.dart';

import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/ui/portfolio/common_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class MobilePortfolioSection extends StatelessWidget {
  const MobilePortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const LabelChip(title: "🔗 Portfolio"),
          const SizedBox(height: 24),
          Text(
            'Work and Projects',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 40),
          BlocBuilder<PortfolioBloc, PortfolioState>(
            builder: (context, state) {
              if (state is PortfolioLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is PortfolioLoaded) {
                return SizedBox(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                        decelerationRate: ScrollDecelerationRate.fast,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: state.projects.length,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: ProjectCard(project: state.projects[index]));
                      }),
                );
              } else {
                return const Center(
                  child: Text('Failed to load projects'),
                );
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
