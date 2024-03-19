import 'package:flutter/material.dart';
import 'package:food_recipe/constants.dart';
import 'package:food_recipe/screens/home_screen.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  currTab = 0;
                }),
                child: Column(
                  children: [
                    Icon(
                      currTab == 0 ? Iconsax.home : Iconsax.home_1_copy,
                      color: currTab == 0 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        color: currTab == 0 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currTab = 1;
                }),
                child: Column(
                  children: [
                    Icon(
                      currTab == 1 ? Iconsax.heart : Iconsax.heart_copy,
                      color: currTab == 1 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 14,
                        color: currTab == 1 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currTab = 2;
                }),
                child: Column(
                  children: [
                    Icon(
                      currTab == 2 ? Iconsax.calendar : Iconsax.calendar_1_copy,
                      color: currTab == 2 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Meal Plan",
                      style: TextStyle(
                        fontSize: 14,
                        color: currTab == 2 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currTab = 3;
                }),
                child: Column(
                  children: [
                    Icon(
                      currTab == 3 ? Iconsax.setting_2 : Iconsax.setting_2_copy,
                      color: currTab == 3 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 14,
                        color: currTab == 3 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: screens[currTab]);
  }
}
