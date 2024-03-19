import 'package:flutter/material.dart';
import 'package:food_recipe/models/food.dart';
import 'package:food_recipe/screens/quick_foods_screen.dart';
import 'package:food_recipe/screens/recipe_screen.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class QuickAndFastList extends StatefulWidget {
  const QuickAndFastList({super.key});

  @override
  State<QuickAndFastList> createState() => _QuickAndFastListState();
}

class _QuickAndFastListState extends State<QuickAndFastList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Quick & Fast",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 119, 118, 118),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuickFoodScreen(),
                ),
              ),
              child: Text("View all"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              foods.length,
              (index) => Container(
                margin: const EdgeInsets.only(right: 10),
                width: 200,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecipeScreen(
                                food: foods[index],
                              ),
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(foods[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          foods[index].name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Iconsax.flash_1_copy,
                              size: 15,
                              color: Color.fromARGB(255, 119, 118, 118),
                            ),
                            Text(
                              "${foods[index].cal} Cal",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 119, 118, 118),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Iconsax.timer_1_copy,
                              size: 15,
                              color: Color.fromARGB(255, 119, 118, 118),
                            ),
                            Text(
                              "${foods[index].time} Min",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 119, 118, 118),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(40, 40),
                        ),
                        iconSize: 20,
                        icon: const Icon(Iconsax.heart_copy),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
