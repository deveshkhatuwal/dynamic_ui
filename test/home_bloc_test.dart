import 'package:bitspan_flutter_task/presentation/bloc/home_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bitspan_flutter_task/presentation/bloc/home_bloc.dart';
import 'package:bitspan_flutter_task/data/models/home_page_model.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'mock_home_page_data.mocks.dart';

void main() {
  late HomeBloc homeBloc;
  late MockGetHomePageData mockGetHomePageData;

  // Properly define setUp
  setUp(() {
    mockGetHomePageData = MockGetHomePageData();
    homeBloc = HomeBloc(mockGetHomePageData);
  });

  group('HomeBloc', () {
    test('Initial state is HomeInitial', () {
      expect(homeBloc.state, isA<HomeInitial>());
    });

    blocTest<HomeBloc, HomeState>(
      'Emits HomeLoading and HomeLoaded on successful fetch',
      build: () => homeBloc,
      act: (bloc) {
        when(mockGetHomePageData()).thenAnswer(
              (_) async => HomePageModel(
            viewtypeList: [],
            theme_colors: [],
            status: 'success',
            statusCode: 200,
            message: 'success',
            type: 'Food',
          ),
        );
        bloc.add(FetchHomePageData());
      },
      expect: () => [
        isA<HomeLoading>(), // Use `isA<HomeLoading>()` instead of `HomeLoading()`
        isA<HomeLoaded>(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'Emits HomeLoading and HomeError on fetch failure',
      build: () => homeBloc,
      act: (bloc) {
        when(mockGetHomePageData()).thenThrow(Exception('Failed to load data'));
        bloc.add(FetchHomePageData());
      },
      expect: () => [
        HomeLoading(),
        isA<HomeError>(),
      ],
    );
  });
}