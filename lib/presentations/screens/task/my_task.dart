import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  
    return Scaffold(
      appBar: CustomAppbar(
        text: Constants.mytasks, 
        onTap: () => Get.back(), 
        height: 110,
        showBackButton: false,
      ),
      body: Column(  // Add Column as parent
        children: [
          Expanded(  // Now Expanded has a proper Flex parent (Column)
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
                    showButton: false,
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