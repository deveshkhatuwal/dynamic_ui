import 'package:json_annotation/json_annotation.dart';
import 'theme_colors_model.dart'; // Ensure this import is correct

part 'home_page_model.g.dart';

@JsonSerializable()
class HomePageModel {
  final List<ViewType>? viewtypeList; // Make the field nullable
  final String? status;
  final int? statusCode;
  final String? message;
  final String? type;
  final List<ThemeColors>? theme_colors; // Make the field nullable

  HomePageModel({
    this.viewtypeList,
    this.status,
    this.statusCode,
    this.message,
    this.type,
    this.theme_colors,
  });

  factory HomePageModel.fromJson(Map<String, dynamic> json) {
    return HomePageModel(
      viewtypeList: (json['ViewtypeList'] as List<dynamic>?)
          ?.map((e) => ViewType.fromJson(e))
          .toList(), // Handle null
      status: json['status'],
      statusCode: json['statusCode'],
      message: json['message'],
      type: json['type'],
      theme_colors: (json['theme_colors'] as List<dynamic>?)
          ?.map((e) => ThemeColors.fromJson(e))
          .toList(), // Parse theme_colors
    );
  }

  Map<String, dynamic> toJson() => _$HomePageModelToJson(this);
}

@JsonSerializable()
class ViewType {
  final String? viewtype;
  final String? datatype;
  final String? title;
  final List<dynamic>? filter; // Make the field nullable
  final String? designtype;
  final List<dynamic>? data; // Make the field nullable

  ViewType({
    this.viewtype,
    this.datatype,
    this.title,
    this.filter,
    this.designtype,
    this.data,
  });

  factory ViewType.fromJson(Map<String, dynamic> json) {
    return ViewType(
      viewtype: json['viewtype'],
      datatype: json['datatype'],
      title: json['title'],
      filter: json['filter'] as List<dynamic>? ?? [], // Handle null
      designtype: json['designtype'],
      data: json['data'] as List<dynamic>? ?? [], // Handle null
    );
  }

  Map<String, dynamic> toJson() => _$ViewTypeToJson(this);
}

@JsonSerializable()
class BannerData {
  final String banner_name;
  final String appbanner_image;
  final String redirect_to;
  final String redirect_id;

  BannerData({
    required this.banner_name,
    required this.appbanner_image,
    required this.redirect_to,
    required this.redirect_id,
  });

  factory BannerData.fromJson(Map<String, dynamic> json) =>
      _$BannerDataFromJson(json);

  Map<String, dynamic> toJson() => _$BannerDataToJson(this);
}

@JsonSerializable()
class CategoryData {
  final int id;
  final String cat_name;
  final String cat_image;

  CategoryData({
    required this.id,
    required this.cat_name,
    required this.cat_image,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);
}

@JsonSerializable()
class ProductData {
  final int id;
  final double price;
  final double discounted_price;
  final String discount;
  final String image;
  final String product_name;
  final String product_des;
  final String? last_orderdate;
  final List<dynamic>? weight;
  final int sizeid;
  final String seller_name;
  final int seller_id;
  final String seller_image;
  final int veg_type;
  final String returnable;
  final int fav_status;
  final String? fav_icon;
  final String? time;
  final String? distance;
  final dynamic rating;
  final String review;

  ProductData({
    required this.id,
    required this.price,
    required this.discounted_price,
    required this.discount,
    required this.image,
    required this.product_name,
    required this.product_des,
    this.last_orderdate,
    this.weight,
    required this.sizeid,
    required this.seller_name,
    required this.seller_id,
    required this.seller_image,
    required this.veg_type,
    required this.returnable,
    required this.fav_status,
    this.fav_icon,
    this.time,
    this.distance,
    required this.rating,
    required this.review,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}