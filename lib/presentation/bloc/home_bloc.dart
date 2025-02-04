import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/get_home_page_data.dart';
import 'home_state.dart';
part 'home_event.dart';




class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomePageData getHomePageData;
  // final ThemeBloc themeBloc;
  HomeBloc(this.getHomePageData) : super(HomeInitial()) {
    on<FetchHomePageData>(_onFetchHomePageData);
  }

  void _onFetchHomePageData(FetchHomePageData event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {

      final homePageModel = await getHomePageData();
      log("home bloc fetching data");
      emit(HomeLoaded(homePageModel));

    } catch (e) {
      // Log the error
      print("Error in HomeBloc in home_bloc file: $e");
      emit(HomeError(e.toString()));
    }
  }
}