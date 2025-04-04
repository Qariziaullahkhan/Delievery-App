import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/domain/controllers/carousel_controller.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/location_title.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselControllerX controller = Get.put(CarouselControllerX());

    final List<String> images = [
      "assets/images/shoes.jpeg",
      "assets/images/shoes.jpeg",
      "assets/images/shoes.jpeg",
    ];
    return Scaffold(
      appBar: CustomAppbar(
        text: Constants.task,
        height: 110,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: "Items Details",
              style: AppStyles.bodyStyle9,
            ),
            const SizedBox(height: 8),
            MyText(
              text:
                  "'Lôrem Ipsum dire ödleplåster estetisk kompetens ressade. Neolsm protäsm astrotik, att semikode dínägt att bepärat ponar.',",
              style: AppStyles.subheadingstylelorem,
            ),
            const SizedBox(height: 16),
            LocationTile(
                icon: Icons.location_on,
                title: "Pick-up location",
                address: "Street 21, New York, USA"),
            const SizedBox(height: 16),
            LocationTile(
                icon: Icons.location_on,
                title: "Delivery location",
                iconColor: Colors.amber,
                address: "Street 22, New York, USA"),

            // Task Details Section
            const Text(
              'Task Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lôrem Ipsum dire ödleplåster estetisk kompetens ressade. Neolsm protäsm astrotik, att semikode dínägt att bepärat ponar.',
              style: TextStyle(color: Colors.grey),
            ),
            MySize(
              height: Responsive.height(0.03),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 140,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: images.map((url) {
                return Container(
                  width: 326,
                  height: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(url), // Use AssetImage here
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
            MySize(
              height: Responsive.height(0.03),
            ),
          
          ],
        ),
      ),
    );
  }
}
