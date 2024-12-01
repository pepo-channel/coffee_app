
import 'package:flutter/material.dart';

import '../consts/const_variable.dart';
import '../customs/custom_app_bar.dart';
import '../customs/custom_field.dart';
import '../widgets/coffee_category_list.dart';
import '../widgets/offer_today.dart';
import '../widgets/products_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        children: [
          const CustomAppBar(), // app bar
          kHeightBox, // height 20 px
          kHeightBox, // height 20 px
          const CustomField(prefixicon: Icon(Icons.search_outlined), hittext: 'Search',), // search field
          kHeightBox, // height 20 px
          Expanded(
            child: CustomScrollView(
              // here today offer and category list and products grid view
              slivers: [
                const TodayOffer(),
                SliverToBoxAdapter(child: kHeightBox), // height 20 px
                const CoffeeCategoryList(),
                SliverToBoxAdapter(child: kHeightBox), // height 20 px
                const ProductsGridView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
