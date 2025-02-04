import 'package:flutter/material.dart';
import 'package:bitspan_flutter_task/data/models/home_page_model.dart';

class ProductListWidget extends StatelessWidget {
  final List<dynamic> products;
  final String productType;
  final Color backgroundColor; // Add theme color for background
  final Color textColor;

  const ProductListWidget({Key? key, required this.products, required this.productType, required this.backgroundColor, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            productType,
            style: theme.textTheme.titleLarge,
            // style: TextStyle(fontSize: 20,color: textColor, fontWeight: FontWeight.bold),
          ),
        ),

   products.length==0 ? Text("No Product"):
   ListView.builder(
     shrinkWrap: true,
     physics: NeverScrollableScrollPhysics(),
     itemCount: products.length,
     itemBuilder: (context, index) {
       final product = ProductData.fromJson(products[index]);
       return Card(

         margin: EdgeInsets.all(8.0),
         child: ListTile(
           leading: Image.network(product.image),
           title: Text(product.product_name, style: theme.textTheme.bodyLarge,),
           subtitle: Text('\₹${product.price.toInt()}',  style: theme.textTheme.bodyMedium,),
           trailing: IconButton(
             icon: Icon(Icons.add_shopping_cart),
             onPressed: () {
               // Add to cart functionality
             },
           ),
         ),
       );
     },
   )
      ],
    );
  }
}