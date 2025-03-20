import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/domain/controllers/filter_controller.dart';
import 'package:delievery_app/presentations/widgets/custom_card.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/searchfield.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewTask extends StatelessWidget {
  final List<String> images = [
    "assets/images/cat.png",
    "assets/images/cat2.jpeg",
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
        "assets/images/car1.jpeg",
        "assets/images/cat2.jpeg",
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
        "assets/images/shoes.jpeg",
        "assets/images/shoes.jpeg",
        "assets/images/shoes.jpeg",
      ],
    },
    // Add more card data as needed
  ];
  final FilterController filterController = Get.put(FilterController());
  final CarouselController controller = Get.put(CarouselController());

  ViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Fixed Content (Top Section)
          Container(
            width: double.infinity,
            height: 184,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Profile Section
                Container(
                  width: 358,
                  height: 48,
                  margin: const EdgeInsets.only(top: 55, left: 16, right: 16),
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Profile Image
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                            AppImages.profile), // Change to your asset path
                      ),

                      // Text
                      Text(
                        Constants.home, // Change to dynamic text if needed
                        style: GoogleFonts.poppins(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      // Notification Icon
                      Stack(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.notifications,
                                color: AppColors.secondry, size: 24),
                            onPressed: () {
                              print("Notification Clicked");
                            },
                          ),
                          Positioned(
                            right: 13,
                            top: 14,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "1", // Dynamic count
                                style: GoogleFonts.poppins(
                                  color: AppColors.secondry,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Search Bar and Filter
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SearchField(
                        controller: TextEditingController(),
                        fillColor: Colors.white,
                        borderColor: Colors.grey,
                        textColor: Colors.white,
                        hintText: "Search",
                        onTap: () {
                          print("Search Field Clicked");
                        },
                      ),
                      MySize(width: 10),
                      // 🔲 Filter Button
                      GestureDetector(
                        onTap: () {
                          print("hi");
                          Get.dialog(
                            _buildPopupContainer(), // Use the custom popup container
                          );
                        },
                        child: Container(
                          width: Responsive.width(0.1),
                          height: Responsive.height(0.05),
                          decoration: BoxDecoration(
                            color: Color(0xFF393939),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(Icons.filter_list,
                              color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          MySize(height: Responsive.height(0.02)),
          //to create me container
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            height: Responsive.height(0.07),
            decoration: BoxDecoration(
              color: AppColors.secondry,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 24, // Ensure it's a perfect circle
                  height: 24, // Ensure it's a perfect circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Background color
                  ),
                  child: Center(
                    // Align icon in center
                    child: Icon(
                      Icons.add,
                      color: AppColors.secondry,
                      size: 20, // Icon size
                    ),
                  ),
                ),
                Text(
                  "Post your delivery request", // Change to dynamic text if needed
                  style: GoogleFonts.poppins(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          //second container
          MySize(height: Responsive.height(0.02)),

          Container(
            margin: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft, // Moves text to start
            child: MyText(
              text: Constants.deliveredrequest,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          ),
          MySize(
            height: 16,
          ),

          // Scrollable Content
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                  vertical: 10), // ListView ke andar spacing
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: cardData.length,
              itemBuilder: (context, index) {
                final data = cardData[index];
                return Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20), // Har card ke beech space
                  child: CustomCard(
                    name: data["name"],
                    email: data["email"],
                    description: data["description"],
                    size: data["size"],
                    weight: data["weight"],
                    quantity: data["quantity"],
                    pickUpLocation: data["pickUpLocation"],
                    deliveryLocation: data["deliveryLocation"],
                    images: data["images"],
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

Widget _buildPopupContainer() {
  return Container(
    margin: const EdgeInsets.only(left: 16, right: 16, top: 110),
    width: Responsive.width(0.3), // 80% of screen width
    height: Responsive.height(0.01), //530
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Align(
              alignment: Alignment.center,
              child: MyText(
                text: "Filter",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              )),
        ),
        SizedBox(height: 24),
       
        // Popup content
      ],
    ),
  );
}
