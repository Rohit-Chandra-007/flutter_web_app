import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_app/bloc/portfolio_bloc.dart';
import 'package:flutter_web_app/common/widgets/label_chip.dart';
import 'package:flutter_web_app/ui/career/common_widgets.dart';

class MobileCareerSection extends StatelessWidget {
  const MobileCareerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
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
          BlocBuilder<PortfolioBloc, PortfolioState>(
            builder: (context, state) {
              if (state is PortfolioLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is PortfolioLoaded) {
                return Column(
                  children: [
                    CareerWidget(
                      title: 'Professional Area',
                      year: '2022',
                      list: state.workExperience,
                    ),
                    const SizedBox(height: 32),
                    CareerWidget(
                      title: 'Academic Area',
                      year: '2014',
                      list: state.academicExperience,
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
