// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageModel _$HomePageModelFromJson(Map<String, dynamic> json) =>
    HomePageModel(
      viewtypeList:
          (json['viewtypeList'] as List<dynamic>?)
              ?.map((e) => ViewType.fromJson(e as Map<String, dynamic>))
              .toList(),
      status: json['status'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      type: json['type'] as String?,
      theme_colors:
          (json['theme_colors'] as List<dynamic>?)
              ?.map((e) => ThemeColors.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$HomePageModelToJson(HomePageModel instance) =>
    <String, dynamic>{
      'viewtypeList': instance.viewtypeList,
      'status': instance.status,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'type': instance.type,
      'theme_colors': instance.theme_colors,
    };

ViewType _$ViewTypeFromJson(Map<String, dynamic> json) => ViewType(
  viewtype: json['viewtype'] as String?,
  datatype: json['datatype'] as String?,
  title: json['title'] as String?,
  filter: json['filter'] as List<dynamic>?,
  designtype: json['designtype'] as String?,
  data: json['data'] as List<dynamic>?,
);

Map<String, dynamic> _$ViewTypeToJson(ViewType instance) => <String, dynamic>{
  'viewtype': instance.viewtype,
  'datatype': instance.datatype,
  'title': instance.title,
  'filter': instance.filter,
  'designtype': instance.designtype,
  'data': instance.data,
};

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData(
  banner_name: json['banner_name'] as String,
  appbanner_image: json['appbanner_image'] as String,
  redirect_to: json['redirect_to'] as String,
  redirect_id: json['redirect_id'] as String,
);

Map<String, dynamic> _$BannerDataToJson(BannerData instance) =>
    <String, dynamic>{
      'banner_name': instance.banner_name,
      'appbanner_image': instance.appbanner_image,
      'redirect_to': instance.redirect_to,
      'redirect_id': instance.redirect_id,
    };

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) => CategoryData(
  id: (json['id'] as num).toInt(),
  cat_name: json['cat_name'] as String,
  cat_image: json['cat_image'] as String,
);

Map<String, dynamic> _$CategoryDataToJson(CategoryData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_name': instance.cat_name,
      'cat_image': instance.cat_image,
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
  id: (json['id'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  discounted_price: (json['discounted_price'] as num).toDouble(),
  discount: json['discount'] as String,
  image: json['image'] as String,
  product_name: json['product_name'] as String,
  product_des: json['product_des'] as String,
  last_orderdate: json['last_orderdate'] as String?,
  weight: json['weight'] as List<dynamic>?,
  sizeid: (json['sizeid'] as num).toInt(),
  seller_name: json['seller_name'] as String,
  seller_id: (json['seller_id'] as num).toInt(),
  seller_image: json['seller_image'] as String,
  veg_type: (json['veg_type'] as num).toInt(),
  returnable: json['returnable'] as String,
  fav_status: (json['fav_status'] as num).toInt(),
  fav_icon: json['fav_icon'] as String?,
  time: json['time'] as String?,
  distance: json['distance'] as String?,
  rating: json['rating'],
  review: json['review'] as String,
);

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'discounted_price': instance.discounted_price,
      'discount': instance.discount,
      'image': instance.image,
      'product_name': instance.product_name,
      'product_des': instance.product_des,
      'last_orderdate': instance.last_orderdate,
      'weight': instance.weight,
      'sizeid': instance.sizeid,
      'seller_name': instance.seller_name,
      'seller_id': instance.seller_id,
      'seller_image': instance.seller_image,
      'veg_type': instance.veg_type,
      'returnable': instance.returnable,
      'fav_status': instance.fav_status,
      'fav_icon': instance.fav_icon,
      'time': instance.time,
      'distance': instance.distance,
      'rating': instance.rating,
      'review': instance.review,
    };
