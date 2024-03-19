import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/models/food.dart';
import 'package:food_recipe/widgets/food_cart.dart';
import 'package:food_recipe/widgets/quick_screen_appbar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class QuickFoodScreen extends StatefulWidget {
  const QuickFoodScreen({super.key});

  @override
  State<QuickFoodScreen> createState() => _QuickFoodScreenState();
}

class _QuickFoodScreenState extends State<QuickFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickScreenAppbar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => FoodCart(
                    food: foods[index],
                  ),
                  itemCount: foods.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
