import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class QuickScreenAppbar extends StatelessWidget {
  const QuickScreenAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: const Size(55, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          color: Colors.black,
          icon: const Icon(CupertinoIcons.chevron_back),
        ),
        const Spacer(),
        const Text(
          "Quick & Easy",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: const Size(55, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          color: Colors.black,
          icon: const Icon(Iconsax.notification_copy),
        ),
      ],
    );
  }
}
