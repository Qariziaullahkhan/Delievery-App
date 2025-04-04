import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/domain/controllers/carousel_controller.dart';
import 'package:delievery_app/presentations/screens/task/offer.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String email;
  final double? height;
  final String description;
  final String size;
  final String weight;
  final String quantity;
  final String pickUpLocation;
  final String deliveryLocation;
  final List<String> images;
  final bool showButton; // Add this parameter
  final Function()? onTap; // Add this parameter

  const CustomCard({
    super.key,
    required this.name,
    required this.email,
    required this.description,
    this.height,
    required this.size,
    required this.weight,
    required this.quantity,
    required this.pickUpLocation,
    required this.deliveryLocation,
    required this.images,
    this.showButton = true, // Default to true
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final CarouselControllerX controller = Get.put(CarouselControllerX());
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              spreadRadius: 0,
              offset: Offset(0, -0),
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppImages.profile),
                radius: 20,
              ),
              title: Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                email,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      AppColors.secondry, // Change to your secondary color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  minimumSize: Size(40, 25),
                ),
                child: Text(
                  "open",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              description,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: DottedDashedLine(
                height: 0, // Horizontal Line
                width: double.infinity,
                dashColor: Colors.amber, // Color
                dashWidth: 6,
                dashSpace: 4,
                axis: Axis.horizontal,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Size : $size",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Weight : $weight',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Quantity : $quantity',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pick-up Location : ',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5), // Space between text and icon
                      Icon(Icons.location_on,
                          color: AppColors.secondry, size: 16),
                      SizedBox(width: 5), // Space between icon and address
                      Expanded(
                        child: Text(
                          pickUpLocation,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2, // Adjust flex values as needed
                    child: Text(
                      'Delivery Location : ',
                      style: GoogleFonts.poppins(
                        color: AppColors.secondry,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis, // Handle overflow
                    ),
                  ),
                  Icon(Icons.location_on, color: AppColors.secondry),
                  Expanded(
                    flex: 3, // Adjust flex values as needed
                    child: Text(
                      deliveryLocation,
                      style: GoogleFonts.inter(
                        color: AppColors.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis, // Handle overflow
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                "Parcel Image",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ),
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 140,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      controller.updateIndex(index);
                    },
                  ),
                  items: images.map((url) {
                    return Container(
                      width: 326,
                      height: 140,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(url),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),

                // Dots Positioned Above Carousel Images
                Positioned(
                  top: 100, // adjust to move it further up or down
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(images.length, (index) {
                        return Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.currentIndex.value == index
                                ? AppColors.secondry
                                : AppColors.lightGrey
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ],
            ),

            SizedBox(height: 10),
            // Conditionally show the button
            if (showButton)
              MyButton(
                onPressed: () {
                  Get.to(() => Offer());
                },
                width: 160,
                height: 40,
                backgroundColor: AppColors.primary,
                text: "Make an offer",
              ),
          ],
        ),
      ),
    );
  }
}
