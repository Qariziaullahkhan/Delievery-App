import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/domain/controllers/bottomnav_controller.dart';
import 'package:delievery_app/presentations/screens/chat/message.dart';
import 'package:delievery_app/presentations/screens/post/post.dart';
import 'package:delievery_app/presentations/screens/task/view_task.dart';
import 'package:delievery_app/presentations/screens/task/my_task.dart';
import 'package:delievery_app/utils/responsive.dart';
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
      const MessageScreen(),
    ];

    return Scaffold(
      body: Obx(() => screens[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => Container(
            width: double.infinity,
            height: 80, // Height increase ki
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
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // Better spacing
              children: List.generate(4, (index) {
                bool isSelected = controller.currentIndex.value == index;
                return GestureDetector(
                  onTap: () => controller.changeTab(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    width: isSelected ? Responsive.width(0.3) : Responsive.width(0.2), // Expand on selection
                    height: isSelected ? Responsive.height(0.07) : Responsive.height(0.09), // Increas height
                    decoration: BoxDecoration(
                      color:
                          isSelected ? AppColors.secondry : Colors.transparent,
                      borderRadius:
                          BorderRadius.circular(8), // Make it more rounded
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    alignment: Alignment.center,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: Get.width * 0.2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ImageIcon(
                            AssetImage([
                              AppImages.mytask,
                              AppImages.mytask,
                              AppImages.post,
                              AppImages.chat
                            ][index]),
                            color: isSelected ? Colors.white : Colors.grey,
                            size: 26,
                          ),
                          if (isSelected) ...[
                            const SizedBox(width: 8),
                            Expanded(
                              // Helps text adjust dynamically
                              child: Text(
                                [
                                  Constants.viewtasks,
                                  Constants.mytasks,
                                  Constants.post,
                                  Constants.chat
                                ][index],
                                // overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: Responsive.fontSize(
                                      0.03), // Adjust if needed
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
