import 'package:flutter/material.dart';
import 'package:food_recipe/constants.dart';
import 'package:food_recipe/models/category.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
    required this.currCategory,
  });

  final String currCategory;

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  String currCategory = '';

  @override
  void initState() {
    super.initState();
    currCategory = widget.currCategory;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                currCategory = categories[index];
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin:
                  const EdgeInsets.only(right: 20), // Adjust padding as needed
              // Adjust margin as needed
              decoration: BoxDecoration(
                color: currCategory == categories[index]
                    ? kprimaryColor
                    : Colors.white,
                borderRadius:
                    BorderRadius.circular(25), // Add border radius if needed
              ),

              child: Text(
                categories[index],
                style: TextStyle(
                  color: currCategory == categories[index]
                      ? Colors.white
                      : Colors.grey.shade600,
                ),
              ),
            ),
          ),
        ).toList(), // Convert the generated list to a list of widgets
      ),
    );
  }
}
