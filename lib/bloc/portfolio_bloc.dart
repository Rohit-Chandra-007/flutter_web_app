import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_web_app/models/project_model.dart';
import 'package:flutter_web_app/models/journey_model.dart';
import 'package:flutter_web_app/repository/portfolio_repository.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final PortfolioRepository portfolioRepository;
  PortfolioBloc(this.portfolioRepository) : super(PortfolioInitial()) {
    on<FetchPortfolioData>(_onFetchPortfolioData);
  }

  Future<void> _onFetchPortfolioData(
    FetchPortfolioData event,
    Emitter<PortfolioState> emit,
  ) async {
    try {
      emit(PortfolioLoading());
      final projects = await portfolioRepository.getProjects();
      final workExperience =
          await portfolioRepository.getProfessionalExperience();
      final academicExperience =
          await portfolioRepository.getAcademicExperience();

      emit(PortfolioLoaded(
          projects: projects,
          workExperience: workExperience,
          academicExperience: academicExperience));
    } catch (e) {
      emit(PortfolioError(message: e.toString()));
    }
  }
}
