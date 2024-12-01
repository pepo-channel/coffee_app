import 'package:coffee_app/consts/const_variable.dart';
import 'package:coffee_app/pages/market_page.dart';
import 'package:flutter/material.dart';
import '../pages/favorite_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0; // integer value to active pages in home attribute
  List<Widget> pages = [
    // list of pages to use navigation bar
    const HomePage(),
    const FavoritePage(),
    const MarketPage(),
    const LoginPage(),
  ];
  GlobalKey<FormState> formkey =
      GlobalKey(); // global key to make validate in login form
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // bottom bar
        type: BottomNavigationBarType.shifting,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        selectedItemColor: ksecondColor,
        unselectedItemColor: kprimaryColor,
        currentIndex: index,
        items: const [
          // bottom bar items
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'market'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
      body: pages[index],
    );
  }
}
