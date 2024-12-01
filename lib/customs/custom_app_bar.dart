
import 'package:flutter/material.dart';

import '../consts/const_variable.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        // app bar
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            // profile pic
            radius: 25,
            backgroundColor: Colors.grey.shade300,
            child: const Icon(
              Icons.person_outline,
              size: 32,
            ),
          ),
          Row(
            // location
            children: [
              Icon(
                Icons.location_on_outlined,
                color: kprimaryColor,
              ),
              const Text('Egypt,Cairo'),
            ],
          ),
          const Row(
            // market and notification
            children: [
              Icon(Icons.shopping_bag_outlined),
              Icon(Icons.notifications_none_sharp),
            ],
          ),
        ],
      ),
    );
  }
}
