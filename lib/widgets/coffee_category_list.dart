import 'package:flutter/material.dart';

import 'category_item.dart';

class CoffeeCategoryList extends StatefulWidget {
  const CoffeeCategoryList({
    super.key,
  });

  @override
  State<CoffeeCategoryList> createState() => _CoffeeCategoryListState();
}

class _CoffeeCategoryListState extends State<CoffeeCategoryList> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        // coffee category
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentindex = index;
                setState(() {});
              },
              child: CategoryItem(
                icon: const Icon(Icons.coffee_outlined),
                text: 'category type',
                isactive: currentindex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
