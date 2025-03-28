import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/screens/task/task.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "assets/images/cat.png",
      "assets/images/cat1.jpeg",
      "assets/images/cat2.jpeg",
    ];
    final List<Map<String, dynamic>> cardData = [
      {
        "name": "Adolf Benzema",
        "email": "xyzabc@gmail.com",
        "description":
            'Lörem ipsum dire ödepläster estetisk kompetens ressade. Neolern protäsm astrotik, attt semikod.',
        "size": "13 inch",
        "weight": "5 kg",
        "quantity": "5",
        "pickUpLocation": "Street 21, New York, USA",
        "deliveryLocation": "Street 21, New York, USA",
        "images": [
          "assets/images/cat.png",
          "assets/images/cat.png",
          "assets/images/cat.png",
        ],
      },
      {
        "name": "John Doe",
        "email": "johndoe@gmail.com",
        "description":
            'Another description for the second card. Lörem ipsum dire ödepläster estetisk kompetens ressade.',
        "size": "15 inch",
        "weight": "7 kg",
        "quantity": "3",
        "pickUpLocation": "Street 45, Los Angeles, USA",
        "deliveryLocation": "Street 45, Los Angeles, USA",
        "images": [
          "assets/images/flower.jpg",
          "assets/images/flower.jpg",
          "assets/images/flower.jpg",
        ],
      },
    ];
    final selectedButton = 0.obs; // Using GetX for state management

    return Scaffold(
      appBar: CustomAppbar(
        text: Constants.mytasks,
        onTap: () => Get.back(),
        height: 110,
        showBackButton: false,
      ),
      body: Column(
        // Add Column as parent
        children: [
          Obx(() => Container(
                margin: const EdgeInsets.only(
                    left: 53, right: 53, top: 24, bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                height: 37,
                child: Row(
                  children: [
                    // My Added Tasks Button
                    Expanded(
                      child: GestureDetector(
                        onTap: () => selectedButton.value = 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedButton.value == 0
                                ? AppColors.primary
                                : AppColors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'My Added tasks',
                            style: GoogleFonts.poppins(
                              color: selectedButton.value == 0
                                  ? Colors.white
                                  : AppColors.lightGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // My Applied Tasks Button
                    Expanded(
                      child: GestureDetector(
                        onTap: () => selectedButton.value = 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedButton.value == 1
                                ? AppColors.primary
                                : AppColors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'My Applied tasks',
                            style: GoogleFonts.poppins(
                              color: selectedButton.value == 1
                                  ? Colors.white
                                  : AppColors.lightGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),

          //mybutton

          Expanded(
            // Now Expanded has a proper Flex parent (Column)
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10),
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: cardData.length,
              itemBuilder: (context, index) {
                final data = cardData[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomCard(
                    onTap: () => Get.to(() => TaskDetailsScreen()),
                    height: 468,
                    name: data["name"],
                    email: data["email"],
                    description: data["description"],
                    size: data["size"],
                    weight: data["weight"],
                    quantity: data["quantity"],
                    pickUpLocation: data["pickUpLocation"],
                    deliveryLocation: data["deliveryLocation"],
                    images: data["images"],
                    
                    showButton:false,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
