import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FoodCounter extends StatelessWidget {
  final int currNumber;
  final Function() onAdd;
  final Function() onRemove;
  const FoodCounter(
      {super.key,
      required this.currNumber,
      required this.onAdd,
      required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onRemove,
            icon: const Icon(Iconsax.minus_copy),
          ),
          const SizedBox(height: 10),
          Text(
            "${currNumber}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          IconButton(
            onPressed: onAdd,
            icon: const Icon(Iconsax.add_copy),
          ),
        ],
      ),
    );
  }
}
