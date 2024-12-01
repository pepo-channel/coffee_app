
import 'package:flutter/material.dart';

import '../consts/const_variable.dart';
import '../customs/custom_elevation_button.dart';

class TodayOffer extends StatelessWidget {
  const TodayOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        // offer today
        decoration: BoxDecoration(
            color: ksecondColor, borderRadius: BorderRadius.circular(24)),
        padding: const EdgeInsets.all(8),
        child: Row(
          // Row has an column and img
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              // column has texts and elevation button
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coffee Offer Time 6:00am - 9:30pm',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'Buy one, Get one \n for Free',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                CustomElevationButton(
                  txt: 'Get Offer Now',
                ),
              ],
            ),
            Image.asset(
              'assets/imgs/offer_day.png',
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
