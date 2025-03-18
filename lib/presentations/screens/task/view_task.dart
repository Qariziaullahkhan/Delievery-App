import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/dash_divider.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/searchfield.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewTask extends StatelessWidget {
  const ViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top Section with AppBar-like UI
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
                              "assets/images/profile.png"), // Change to your asset path
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
                        Container(
                          width: Responsive.width(0.1),
                          height: Responsive.height(0.05),
                          decoration: BoxDecoration(
                            color: Color(0xFF393939),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.filter_list,
                                color: Colors.white, size: 20),
                            onPressed: () {
                              print("Filter Button Clicked");
                            },
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
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              height: 522,
              decoration: BoxDecoration(
                color: AppColors.white,
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
                children: [
                  ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                        radius: 20,
                      ),
                      title: MyText(
                        text: "Adolf Benzema",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      subtitle: MyText(
                        text: "xyzabc@gmail.com",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      trailing: MyButton(
                          width: 40,
                          height: 25,
                          borderRadius: BorderRadius.circular(7),
                          backgroundColor: AppColors.secondry,
                          onPressed: () {},
                          text: "open")),
                  Text(
                    textAlign: TextAlign.center,
                    'Lörem ipsum dire ödepläster estetisk kompetens ressade. Neolern protäsm astrotik, attt semikod.',
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w500),
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
                              "Size : 13 inch",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Weight : 5 kg',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Quantity : 5',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pick-up Location : ',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 5), // Space between text and icon
                          Icon(Icons.location_on,
                              color: Colors.amber, size: 16),
                          SizedBox(width: 5), // Space between icon and address
                          Expanded(
                            child: Text(
                              'Street 21, New York, USA',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Location : ',
                        style: GoogleFonts.inter(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Icon(Icons.location_on, color: Colors.amber),
                      Text(
                        'Street 21, New York, USA',
                        style: GoogleFonts.inter(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MySize(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              height: 522,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
