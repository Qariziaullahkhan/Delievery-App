import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/presentations/screens/chat/chat.dart';
import 'package:delievery_app/presentations/widgets/custom_appbar.dart';
import 'package:delievery_app/presentations/widgets/searchfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> messages = [
      {"name": "Adolf Benzema", "image": AppImages.profile1, "unread": 5},
      {"name": "Talent Lodge", "image": AppImages.talent, "unread": 5},
      {"name": "Aapeli Abbe", "image": AppImages.abbe, "unread": 0},
      {"name": "Albert", "image": AppImages.albert, "unread": 0},
      {"name": "Harry Brook", "image": AppImages.brook, "unread": 0},
      {"name": "Jimmy Neasham", "image": AppImages.nesham, "unread": 0},
      {"name": "Jimmy Neasham", "image": AppImages.nesham, "unread": 0},
      {"name": "Jimmy Neasham", "image": AppImages.nesham, "unread": 0},
      {"name": "Jimmy Neasham", "image": AppImages.nesham, "unread": 0},
      {"name": "Jimmy Neasham", "image": AppImages.nesham, "unread": 0},
    ];
    return Scaffold(
      appBar: CustomAppbar(
        text: Constants.chat,
        showBackButton: false,
        onTap: () {},
        height: 110,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: SearchField(
                    controller: TextEditingController(),
                    fillColor: Colors.white,
                    searchcolor: AppColors.white,
                    borderColor: AppColors.white,
                    textColor: Colors.white,
                    hintText: "Search",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with your actual item count
              itemBuilder: (context, index) {
                final message = messages[index];

                return Card(
                  elevation: 4,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(message["image"]),
                      backgroundColor: Colors.grey,
                    ),
                    title: Text(
                      message["name"],
                      style: GoogleFonts.poppins(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'I didn’t received my product......',
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: AppColors.secondry,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '2',
                            style: GoogleFonts.poppins(
                                color: AppColors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const Text(
                          '12:30 PM',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    onTap: () {
                       Get.to(
                        () => ChatScreen(
                          userName: message["name"],
                          userImage: message["image"],
                        ),
                        // transition: Transition.rightToLeft,
                      );
                      // Handle message tap
                    },
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
