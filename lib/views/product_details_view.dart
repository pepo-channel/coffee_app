import 'package:flutter/material.dart';

import '../consts/const_variable.dart';
import '../customs/custom_elevation_button.dart';
import '../customs/product_size.dart';

class ProductView extends StatefulWidget {
  const ProductView({
    super.key,
  });

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  Color FavIconColor = ksecondColor;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ksecondColor,
      appBar: AppBar(
          // app bar
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Row(
            // row has two
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                // back icon
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: ksecondColor,
                    )),
              ),
              CircleAvatar(
                // favorite icon
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {
                      if (FavIconColor == ksecondColor) {
                        FavIconColor = const Color.fromARGB(255, 176, 13, 1);
                        setState(() {});
                      } else {
                        FavIconColor = ksecondColor;
                        setState(() {});
                      }
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: FavIconColor,
                    )),
              )
            ],
          )),
      body: Column(
        children: [
          Image.asset(
            // product image
            'assets/imgs/product_detail.png',
            height: 350,
          ),
          Expanded(
            child: Container(
              // cotainer has column
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeightBox, // 20px height
                  Row(
                    // row has two text and counter
                    children: [
                      const Column(
                        // column has two text
                        children: [
                          Text(
                            'product name',
                            style: TextStyle(color: Colors.black, fontSize: 35),
                          ),
                          Text(
                            'product describtion',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              // minus icon
                              onPressed: () {
                                if (count > 1) {
                                  count--;
                                  setState(() {});
                                }
                              },
                              icon: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: kprimaryColor),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Icon(
                                  Icons.exposure_minus_1_rounded,
                                  color: kprimaryColor,
                                ),
                              ),
                            ),
                            Text(
                              // num count
                              '$count',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            IconButton(
                              // plus icon
                              onPressed: () {
                                if (count < 10) {
                                  count++;
                                  setState(() {});
                                }
                              },
                              icon: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: kprimaryColor),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Icon(
                                  Icons.plus_one,
                                  color: kprimaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  kHeightBox, // 20px height
                  const Text(
                    // choose size text
                    'Choose Sizes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  kHeightBox, // 20px height
                  const Padding(
                    // row has products size
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      // row has three size types
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ProductSize(
                            sizetype: 'small',
                            sizesale: '\$25.00',
                            sizeicon: 20),
                        ProductSize(
                            sizetype: 'medium',
                            sizesale: '\$35.00',
                            sizeicon: 40),
                        ProductSize(
                            sizetype: 'Large',
                            sizesale: '\$40.00',
                            sizeicon: 60),
                      ],
                    ),
                  ),
                  kHeightBox,
                  kHeightBox,
                  const Center(
                      child: CustomElevationButton(txt: 'Add To Card')),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
