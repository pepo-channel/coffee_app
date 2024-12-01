import 'package:flutter/material.dart';

import '../consts/const_variable.dart';

class FavoriteMarketItem extends StatelessWidget {
  const FavoriteMarketItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // container has list tile
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: kprimaryColor)),
      child: ListTile(
          // list tile of product
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          minTileHeight: 100,
          leading: Image.asset(
            // product image
            'assets/imgs/list_tile.jpeg',
            height: 100,
            fit: BoxFit.fill,
          ),
          title: const Text(
            // Product name
            'Product name',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          subtitle: const Text(
            // Product describtion
            'Product describtion',
            style: TextStyle(color: Colors.black45, fontSize: 20),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Color(0xFFCB0E00),
                size: 30,
              ))),
    );
  }
}
