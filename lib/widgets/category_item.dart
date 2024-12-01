import 'package:flutter/material.dart';

import '../consts/const_variable.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({
    super.key,
    required this.icon,
    required this.text,
    this.isactive = false,
  });

  final Icon icon;
  final String text;
  final bool isactive;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  Color backgroundcolor = Colors.white;
  Color textcolor = Colors.black;

  @override
  Widget build(BuildContext context) {
    if (widget.isactive) {
      backgroundcolor = kprimaryColor;
      textcolor = Colors.black;
      setState(() {});
    }
    return GestureDetector(
      // category item
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: widget.isactive
              ? backgroundcolor
              : Colors.white, // here backgroundcolor value
          border: Border.all(width: 1, color: kprimaryColor),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              // category icon
              backgroundColor: Colors.white,
              radius: 20,
              child: widget.icon,
            ),
            kWidthBox,
            Text(
              // category text
              widget.text,
              style: TextStyle(
                  color: widget.isactive ? textcolor : Colors.black,
                  fontSize: 18), // here color value
            ),
          ],
        ),
      ),
    );
  }
}
