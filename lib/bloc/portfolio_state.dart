part of 'portfolio_bloc.dart';

@immutable
sealed class PortfolioState  extends Equatable{}

class PortfolioInitial extends PortfolioState {
  @override
  List<Object?> get props => [];
}

class PortfolioLoading extends PortfolioState {
  @override
  List<Object?> get props => [];
}

class PortfolioLoaded extends PortfolioState {
  final List<Project> projects;

  PortfolioLoaded({required this.projects});

  @override
  List<Object?> get props => [projects];
}

class PortfolioError extends PortfolioState {
  final String message;

  PortfolioError({required this.message});

  @override
  List<Object?> get props => [message];
}
