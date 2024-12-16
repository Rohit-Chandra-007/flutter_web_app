import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_app/bloc/portfolio_bloc.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/ui/career/common_widgets.dart';

class TabCareerSection extends StatelessWidget {
  const TabCareerSection({super.key});

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
          BlocBuilder<PortfolioBloc, PortfolioState>(
            builder: (context, state) {
              if (state is PortfolioLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is PortfolioLoaded) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CareerWidget(
                        title: 'Professional Area',
                        year: '2022',
                        list: state.workExperience,
                      ),
                    ),
                    const SizedBox(width: 80),
                    Expanded(
                      child: CareerWidget(
                        title: 'Academic Area',
                        year: '2014',
                        list: state.academicExperience,
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(child: Text('Error'));
              }
            },
          ),
        ],
      ),
    );
  }
}
