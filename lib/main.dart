import 'package:flutter/material.dart';
import 'package:food_app/screens/food/recomended_food_detail.dart';
import 'package:food_app/screens/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecomendedFoodDetail(),
    );
  }
}
