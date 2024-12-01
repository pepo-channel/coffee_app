import 'package:flutter/material.dart';
import '../consts/const_variable.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({
    super.key,
    required this.sizetype,
    required this.sizesale,
    required this.sizeicon,
  });

  final String sizetype;
  final String sizesale;
  final double sizeicon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // cup icon
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: const Color(0xFFF7ECEC),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Icon(
              Icons.coffee_outlined,
              color: ksecondColor,
              size: sizeicon,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          // size type
          sizetype,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 20,
          ),
        ),
        Text(
          // sale
          sizesale,
          style: const TextStyle(
            color: Colors.black26,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
