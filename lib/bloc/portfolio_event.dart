part of 'portfolio_bloc.dart';

@immutable
sealed class PortfolioEvent extends Equatable {}

class FetchPortfolioData extends PortfolioEvent {
  @override
  List<Object?> get props => [];
}
