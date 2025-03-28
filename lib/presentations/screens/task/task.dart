import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/location_title.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
LocationTile(icon: Icons.location_searching, title: "title", address: "fdgfg"),
        


            const Divider(height: 40),

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
            const SizedBox(height: 16),

            // Parcel Image Placeholder
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Parcel Image',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
