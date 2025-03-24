import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/domain/controllers/filter_controller.dart';
import 'package:delievery_app/presentations/screens/profile/profile.dart';
import 'package:delievery_app/presentations/screens/setting/notification.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/custom_card.dart';
import 'package:delievery_app/presentations/widgets/custom_textfield.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/searchfield.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewTask extends StatelessWidget {
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
        "assets/images/cat1.jpeg",
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
            height: Responsive.height(0.3),
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
                      InkWell(
                        onTap: () => Get.to(() => const ProfileScreen()),
                        child: CircleAvatar(
                          
                          radius: 20,
                          backgroundImage: AssetImage(
                              AppImages.profile), // Change to your asset path
                        ),
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
                              Get.to(() => const NotificationScreen());
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
                        },
                      ),
                      MySize(width: 10),
                      // 🔲 Filter Button
                      GestureDetector(
                        onTap: () {
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
  return Material(
    color: Colors.transparent, // To keep the background unchanged
    child: Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 110),
      width: Responsive.width(0.3), // 30% of screen width
      height: Responsive.height(0.6), // Adjust height as needed
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
              ),
            ),
          ),
          MySize(height: 24), // Space between text and text field
          SizedBox(
            width: double.infinity, // Ensures full width if needed
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: MyText(
                text: "Delivery Date",
                style: AppStyles.bodyStyle6,
              ),
            ),
          ),
          MySize(height: 20), // Space between text and text field
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: SizedBox(
              width: double.infinity, // Ensures full width if needed
              child: MyTextField(
                controller: TextEditingController(),
                prefixIcon: Icons.calendar_month,
                hintText: 'DD - MM - YYYY',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a date';
                  }
                  return null;
                },
              ),
            ),
          ),
          MySize(height: 16),

          //pickuplocation
          SizedBox(
            width: double.infinity, // Ensures full width if needed
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: MyText(
                text: "Pickup Location",
                style: AppStyles.bodyStyle6,
              ),
            ),
          ),
          MySize(height: 20), // Space between text and text field
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: SizedBox(
              width: double.infinity, // Ensures full width if needed
              child: MyTextField(
                controller: TextEditingController(),
                prefixIcon: Icons.location_on,
                hintText: 'Street 21, New York USA',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a Pickup Location';
                  }
                  return null;
                },
              ),
            ),
          ),
          MySize(height: 16),
          //deliverylocation
          SizedBox(
            width: double.infinity, // Ensures full width if needed
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: MyText(
                text: "Delivery Location",
                style: AppStyles.bodyStyle6,
              ),
            ),
          ),
          MySize(height: 20), // Space between text and text field
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: SizedBox(
              width: double.infinity, // Ensures full width if needed
              child: MyTextField(
                controller: TextEditingController(),
                prefixIcon: Icons.location_on,
                hintText: 'Street 22, New York USA',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a Delivery Location';
                  }
                  return null;
                },
              ),
            ),
          ),
          MySize(height: 16),
          SizedBox(
            width: double.infinity, // Ensures full width if needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: MyText(
                    text: "Task Poster Rating",
                    style: AppStyles.bodyStyle6,
                  ),
                ),
                SizedBox(height: 8), // Space between text and rating bar
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: SizedBox(
                    width: double.infinity, // Ensures full width if needed
                    child: RatingBar.builder(
                      initialRating: 3, // Set initial rating
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true, // Allows half stars
                      itemCount: 5,
                      itemSize: 30, // Adjust star size
                      itemPadding: EdgeInsets.symmetric(horizontal: 6.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: AppColors.secondry, // Star color
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                ),
                MySize(height: 16),
                //buttons make an offer

                Center(
                  child: MyButton(
                    onPressed: () {
                      Get.back();
                    },
                    width: 160,
                    height: 40,
                    backgroundColor: AppColors.primary,
                    text: Constants.applyfilter,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
