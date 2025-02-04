import 'package:bitspan_flutter_task/core/errors/exceptions.dart';
import 'package:bitspan_flutter_task/data/datasources/remote_data_source.dart';
import 'package:bitspan_flutter_task/data/models/home_page_model.dart';
import 'package:bitspan_flutter_task/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final RemoteDataSource remoteDataSource;

  HomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<HomePageModel> getHomePageData() async {
    try {
      final homePageModel = await remoteDataSource.getHomePageData();
      return homePageModel; // Return HomePageModel directly
    } on ServerException {
      rethrow;
    }
  }
}