import 'package:coffee_app/views/welcome_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'YanoneKaffeesatzs',
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomeView(),
    );
  }
}
