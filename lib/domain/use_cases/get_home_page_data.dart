import 'package:bitspan_flutter_task/data/models/home_page_model.dart';
import 'package:bitspan_flutter_task/domain/repositories/home_repository.dart';

class GetHomePageData {
  final HomeRepository repository;

  GetHomePageData(this.repository);

  Future<HomePageModel> call() async {
    return await repository.getHomePageData(); // Return HomePageModel directly
  }
}