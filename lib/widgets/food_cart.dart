import 'package:flutter/material.dart';
import 'package:food_recipe/models/food.dart';
import 'package:food_recipe/screens/recipe_screen.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FoodCart extends StatelessWidget {
  final Food food;
  const FoodCart({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RecipeScreen(food: food),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 200,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(food.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  food.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(
                      Iconsax.flash_1_copy,
                      size: 15,
                      color: Color.fromARGB(255, 119, 118, 118),
                    ),
                    Text(
                      "${food.cal} Cal",
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
                      "${food.time} Min",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 119, 118, 118),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow.shade700,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "${food.rate}/5",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 119, 118, 118),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "(${food.reviews} reviews)",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 119, 118, 118),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              top: 1,
              right: 1,
              child: IconButton(
                onPressed: () {
                  food.isLiked = food.isLiked ? false : true;
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(40, 40),
                ),
                iconSize: 20,
                icon: food.isLiked
                    ? const Icon(Iconsax.heart, color: Colors.red)
                    : const Icon(Iconsax.heart_copy),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
