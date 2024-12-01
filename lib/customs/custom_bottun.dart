
import 'package:coffee_app/consts/const_variable.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text, this.ontap,
  });

  final String text;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(30)),
        width: 350,
        height: 60,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
