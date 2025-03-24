import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/presentations/screens/task/submitt.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/custom_textfield.dart';
import 'package:delievery_app/presentations/widgets/location_title.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Offer extends StatelessWidget {
  final List<String> images = [
    "assets/images/cat.png",
    "assets/images/cat1.jpeg",
    "assets/images/cat2.jpeg",
  ];
  Offer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(text: Constants.offer, onTap: () => Get.back()),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(AppImages.profile),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Adolf Benzema',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'xyzabc@gmail.com',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '47 mins ago',
                        style: GoogleFonts.poppins(
                          color: AppColors.secondry,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.secondry,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const LocationTile(
                    icon: Icons.location_on,
                    title: "Pick-up location",
                    address: "Street 21, New York, USA",
                  ),
                  const LocationTile(
                    icon: Icons.location_pin,
                    title: "Delivery location",
                    address: "Street 22, New York, USA",
                    iconColor: Colors.amber,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Parcel Image",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grey),
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
                    height: Responsive.height(0.1),
                  ),
                  Container(
                      width: double.infinity,
                      height: Responsive.height(0.3),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(-5, -5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Budget Estimate",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                          MySize(
                            height: Responsive.height(0.02),
                          ),
                          //to create this text $20.99
                          Text(
                            "\$20.99",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                          MySize(
                            height: Responsive.height(0.02),
                          ),
                          // to create offerbutton mybutton class
                          MyButton(
                            width: Responsive.width(0.5),
                            backgroundColor: AppColors.primary,
                            height: Responsive.height(0.07),
                            text: Constants.makeoffer,
                            onPressed: () {
                              Get.dialog(_buildPopupContainer());

                            },
                          ),
                          //text
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
                    text: "Offer",
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
                    text: "Give you offer",
                    style: AppStyles.bodyStyle6,
                  ),
                ),
              ),
              MySize(height: 20), // Space between text and text field
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  width: double.infinity, // Ensures full width if needed
                  child: MyTextField(
                    controller: TextEditingController(),
                    hintText: '\$20.99', //$20.99
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
              // row wise and two text
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(children: [
                  MyText(
                    text: "You will receive",
                    style: AppStyles.bodyStyle5,
                  ),
                  Spacer(),
                  MyText(
                    text: "\$20.99",
                    style: AppStyles.bodyStye2,
                  ),
                ]),
              ),
              //pickuplocation

              MySize(height: 16),
              // row wise and two text
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(children: [
                  MyText(
                    text: "Service Fee",
                    style: AppStyles.bodyStyle5,
                  ),
                  Spacer(),
                  MyText(
                    text: "\$ 2.00",
                    style: AppStyles.bodyStye2,
                  ),
                ]),
              ),
              MySize(
                height: Responsive.height(0.1),
              ),
              // text and longtextfield
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  "Why you're the best person for this task?",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Text Field with "Add your comment" hint
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Add your comment",
                      hintStyle: GoogleFonts.poppins(
                        color: AppColors.primary,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(
                          color: AppColors.white,
                          width: 1.5,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(16),
                    ),
                    maxLines: 5,
                    minLines: 3,
                  ),
                ),
              ),
            MySize(height: Responsive.height(0.02),),
              //buttons make an offer

              Center(
                child: MyButton(
                  onPressed: () {
                              Get.to(() => const Submitt());
                  },
                  width: Responsive.width(0.5),
                  height: Responsive.height(0.07),
                  backgroundColor: AppColors.primary,
                  text: Constants.continues,
                ),
              ),
            ],
          )),
    );
  }
}
