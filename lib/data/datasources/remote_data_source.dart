import 'package:bitspan_flutter_task/data/models/theme_colors_model.dart';
import 'package:dio/dio.dart';
import 'package:bitspan_flutter_task/core/constants/api_constants.dart';
import 'package:bitspan_flutter_task/core/errors/exceptions.dart';
import 'package:bitspan_flutter_task/data/models/home_page_model.dart';

import '../../core/network/dio_client.dart';

class RemoteDataSource {
  final DioClient dioClient;

  RemoteDataSource(this.dioClient);

  Future<HomePageModel> getHomePageData() async {
    try {
      final response = await dioClient.dio.get(
        ApiConstants.homepageEndpoint,
        data: {
          "added_by_web": "food.56testing.club",
          "service_id": 2,
          "user_id": 1,
        },
      );

      if (response.statusCode == 200) {
        return HomePageModel.fromJson(response.data);


      } else {
        throw ServerException('Failed to load data');
      }
    } on DioException catch (e) {
      throw ServerException(e.message.toString());
    }
  }
}