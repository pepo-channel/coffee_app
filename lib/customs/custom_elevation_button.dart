import 'package:flutter/material.dart';

import '../consts/const_variable.dart';

class CustomElevationButton extends StatelessWidget {
  const CustomElevationButton({
    super.key,
    required this.txt, this.onpressed,
  });

  final String txt;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(kprimaryColor),
          shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(8)))),
      child: Text(
        txt,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
