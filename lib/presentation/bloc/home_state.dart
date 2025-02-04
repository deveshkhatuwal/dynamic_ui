// home_state.dart
import 'package:equatable/equatable.dart';

import '../../data/models/home_page_model.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {} // Now equatable

class HomeLoaded extends HomeState {
  final HomePageModel homePageModel;

  const HomeLoaded(this.homePageModel);

  @override
  List<Object?> get props => [homePageModel];
}

class HomeError extends HomeState {
  final String message;

  const HomeError(this.message);

  @override
  List<Object?> get props => [message];
}