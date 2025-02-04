import 'package:bitspan_flutter_task/data/models/home_page_model.dart';

abstract class HomeRepository {
  Future<HomePageModel> getHomePageData(); // Use HomePageModel instead of HomePageEntity
}