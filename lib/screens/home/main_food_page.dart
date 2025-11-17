import 'package:flutter/material.dart';
import 'package:food_app/screens/home/food_page_body.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimension.height45, bottom: Dimension.height15),
              padding: EdgeInsets.symmetric(horizontal: Dimension.radius20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Bangladesh', color: AppColors.mainColor), 
                      Row(
                        children: [
                          SmallText(text: 'Narsingdi', color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                      ],
                      ),

                  Center(
                    child: Container(
                      width: Dimension.width45,
                      height: Dimension.height45,
                      child: Icon(Icons.search, color: Colors.white, size: Dimension.iconSize24),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          //showing the body
          Expanded(child: SingleChildScrollView(child: FoodPageBody())),

          
        ],
      ),
    );
  }
}
