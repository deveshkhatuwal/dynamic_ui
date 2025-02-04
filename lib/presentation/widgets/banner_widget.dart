import 'package:flutter/material.dart';
import 'package:bitspan_flutter_task/data/models/home_page_model.dart';

class BannerWidget extends StatelessWidget {
  final List<dynamic> banners;

  const BannerWidget({Key? key, required this.banners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: banners.length,
        itemBuilder: (context, index) {
          final banner = BannerData.fromJson(banners[index]);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(banner.appbanner_image),
          );
        },
      ),
    );
  }
}