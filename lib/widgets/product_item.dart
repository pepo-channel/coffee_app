import 'package:coffee_app/views/product_details_view.dart';
import 'package:flutter/material.dart';
import '../consts/const_variable.dart';
import '../customs/custom_elevation_button.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // item product
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kprimaryColor),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/imgs/coffe_classic.jpeg',
            height: 150,
          ),
          const Text(
            'product title',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          const Text(
            'product describtion',
            style: TextStyle(color: Colors.black45, fontSize: 16),
          ),
          const SizedBox(height: 10),
          CustomElevationButton(
            txt: 'Add to Card',
            onpressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductView()));
            },
          ),
        ],
      ),
    );
  }
}
