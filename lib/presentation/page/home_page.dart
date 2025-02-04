import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/widgets/loading_indicator.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import '../bloc/theme_bloc.dart';
import '../widgets/banner_widget.dart';
import '../widgets/category_widget.dart';
import '../widgets/error_widget.dart';
import '../widgets/product_list_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () => context.read<ThemeBloc>().add(ToggleTheme()),
          ),
        ],
        title: Text('Dynamic UI'),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return LoadingIndicator();
          }
          else if (state is HomeLoaded) {
            final viewtypeList = state.homePageModel.viewtypeList ?? []; // Handle null
            final themeColors = context.read<ThemeBloc>().state is ThemeUpdated
                ? (context.read<ThemeBloc>().state as ThemeUpdated).themeColors
                : null;

            // Extract theme colors
            final bgColor = themeColors != null
                ? Color(int.parse(themeColors.bg_clr.split(',').first.replaceAll('#', '0xff')))
                : Colors.white;
            final textColor = themeColors != null
                ? Color(int.parse(themeColors.txt_clr.split(',').first.replaceAll('#', '0xff')))
                : Colors.black;

            return ListView(
              children: viewtypeList.map((viewType) {
                switch (viewType.viewtype) {
                  case 'Banner':
                    return BannerWidget(banners: viewType.data ?? []); // Handle null
                  case 'Category':
                    return CategoryWidget(categories: viewType.data ?? []); // Handle null
                  case 'Products':
                   
                    return ProductListWidget(products: viewType.data ?? [],
                      backgroundColor: bgColor,
                      textColor: textColor,
                      productType: viewType.title ?? "Products",); // Handle null
                  default:
                    return Container();
                }
              }).toList(),
            );
          }
          else if (state is HomeError) {
          return ErrorMsgWidget(message :state.message);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}