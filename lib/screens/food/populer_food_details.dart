import 'package:flutter/material.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expanded_text_widget.dart';

class PopulerFoodDetails extends StatelessWidget {
  const PopulerFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image Section
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food1.jpg"),
                ),
              ),
            ),
          ),

          // Icon Section
          Positioned(
            top: Dimension.height45,
            right: Dimension.width20,
            left: Dimension.width20,
            child: Row(
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                Spacer(),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),

          // Introduction Section
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
                top: Dimension.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimension.radius20),
                  topLeft: Radius.circular(Dimension.radius20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: 'Biriyani',),
                  SizedBox(height: Dimension.height20),
                  BigText(text: 'Introduce'),
                  SizedBox(height: Dimension.height20),
                  ExpandedTextWidget(text: 'This is an e-commerce app for food delivery using flutter with backend as crash course tutorial for iOS and Android. This is a shopping app with backend of Laravel and Laravel admin panel using restful api complete CRUD operations. We also used firebase for notification. This tutorial covers complete shopping cart, placing orders, signup or registration, sign-in or login, payment.',),
                ],
              ),
            ),
          ),
          
        ],
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        height: Dimension.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimension.height30,
          bottom: Dimension.height30,
          left: Dimension.width20,
          right: Dimension.width20,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFf4f6fa),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20 * 2),
            topRight: Radius.circular(Dimension.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimension.height20,
                bottom: Dimension.height20,
                left: Dimension.width20,
                right: Dimension.width20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimension.radius20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Color(0xFF89dad0)),
                  SizedBox(width: Dimension.width10),
                  BigText(text: '0'),
                  SizedBox(width: Dimension.width10),
                  Icon(Icons.add, color: Color(0xFF89dad0)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimension.height20,
                bottom: Dimension.height20,
                left: Dimension.width20,
                right: Dimension.width20,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF89dad0),
                borderRadius: BorderRadius.circular(Dimension.radius20),
              ),
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
