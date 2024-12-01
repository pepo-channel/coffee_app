import 'package:coffee_app/consts/const_variable.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    this.prefixicon,
    required this.hittext,
    this.labeltext,
    this.onsaved,
    this.onvalid,
  });

  final Widget? prefixicon;
  final String hittext;
  final String? labeltext;
  final void Function(String?)? onsaved;
  final String? Function(String?)? onvalid;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: onvalid,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        prefixIcon: prefixicon, // here => icon value
        filled: true,
        fillColor: const Color(0xfff7efec),
        hintText: hittext,
        hintStyle: const TextStyle(color: Colors.black),
        label: Text(
          hittext,
          style: const TextStyle(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: ksecondColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kprimaryColor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
