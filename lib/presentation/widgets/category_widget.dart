import 'package:flutter/material.dart';
import 'package:bitspan_flutter_task/data/models/home_page_model.dart';

class CategoryWidget extends StatelessWidget {
  final List<dynamic> categories;

  const CategoryWidget({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = CategoryData.fromJson(categories[index]);
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(category.cat_image),
                    ),
                    SizedBox(height: 4),
                    Text(category.cat_name),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}