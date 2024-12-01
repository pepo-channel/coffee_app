import 'package:coffee_app/views/home_view.dart';
import 'package:flutter/material.dart';

import '../customs/custom_bottun.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            // gradiant background color
            center: Alignment.topRight,
            radius: 3,
            colors: [
              Colors.brown[500]!,
              Colors.brown[900]!,
              const Color.fromARGB(255, 45, 32, 27),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/imgs/homeLogo.png',
              ),
            ),
            const SizedBox(height: 100),
            const Text(
              'Choice your Favorite Coffee',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            const SizedBox(height: 16),
            const Text(
              'the best grain, the finest roast, the mosst \npowerful fiavour.',
              style: TextStyle(color: Color(0xB9FFFFFF), fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: 'Get Started',
              ontap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
