import 'package:bitspan_flutter_task/presentation/bloc/theme_bloc.dart';
import 'package:bitspan_flutter_task/presentation/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bitspan_flutter_task/core/utils/di.dart';

import 'package:bitspan_flutter_task/presentation/bloc/home_bloc.dart';
import 'package:bitspan_flutter_task/domain/use_cases/get_home_page_data.dart';
import 'package:bitspan_flutter_task/data/repositories/home_repository_impl.dart';
import 'package:bitspan_flutter_task/data/datasources/remote_data_source.dart';
import 'package:get_it/get_it.dart';

import 'core/network/dio_client.dart';
import 'core/utils/app_theme.dart';

void main() {
  setupDI();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic UI',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider(
            create:
                (context) => HomeBloc(
                  GetHomePageData(
                    HomeRepositoryImpl(RemoteDataSource(GetIt.I<DioClient>())),
                  ),
                )..add(FetchHomePageData()),
          ),

        ],

          child: BlocBuilder<ThemeBloc, ThemeState>(
    builder: (context, themeState) {
    return MaterialApp(
    title: 'Dynamic UI',
      theme: themeState is ThemeUpdated
          ? AppTheme.getTheme(themeState.themeColors, themeState.brightness)
          : ThemeData.light(),// Default theme
    home: HomePage(),
    );
    },
    ),),
    );
  }
}