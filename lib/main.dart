import 'package:flutter/material.dart';
import 'package:food_recipe/constants.dart';
import 'package:food_recipe/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Biofit",
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        useMaterial3: true,
        scaffoldBackgroundColor: kbackgroundColor,
      ),
      home: const MainScreen(),
    );
  }
}
