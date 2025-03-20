import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/domain/controllers/bottomnav_controller.dart';
import 'package:delievery_app/presentations/screens/chat/chat.dart';
import 'package:delievery_app/presentations/screens/post/post.dart';
import 'package:delievery_app/presentations/screens/task/view_task.dart';
import 'package:delievery_app/presentations/screens/task/my_task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());

    final List<Widget> screens = [
       ViewTask(),
      const MyTask(),
      const PostScreen(),
      const ChatScreen(),
    ];

    return Scaffold(
      body: Obx(() => screens[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => Container(
        width: double.infinity,
        height: 78,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                bool isSelected = controller.currentIndex.value == index;
                return GestureDetector(
                  onTap: () => controller.changeTab(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isSelected ? 120 : 75, // Expand when selected
                    height: isSelected?44:60,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColors.secondry : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage([
                            AppImages.mytask,
                            AppImages.mytask,
                            AppImages.post,
                            AppImages.chat
                          ][index]),
                          color: isSelected ? Colors.white : Colors.grey,
                          size: 24,
                        ),
                        if (isSelected) ...[
                          const SizedBox(width: 8),
                          Text(
                            [
                              Constants.viewtasks,
                              Constants.viewtasks,
                              Constants.post,
                              Constants.chat
                            ][index],
                            style:  GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}