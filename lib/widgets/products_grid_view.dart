import 'package:flutter/material.dart';

import 'product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.98490566037735849056603773584906,
            crossAxisCount: 2,
            mainAxisSpacing: 25,
            crossAxisSpacing: 25),
        itemCount: 8,
        itemBuilder: (context, index) {
          return const ItemProduct();
        });
  }
}
