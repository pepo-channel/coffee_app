import 'package:flutter/material.dart';
import '../consts/const_variable.dart';
import '../customs/custom_app_bar.dart';
import '../widgets/favourite&market_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({
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
          const Text(
            'Favoites',
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          kHeightBox, // height 20 px
          Expanded(
            // expanded to use listview
            child: ListView.builder(
              // list view builder of favourite product
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const FavoriteMarketItem(), // favourite item
                    kHeightBox, // 20px height
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
