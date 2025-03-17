import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_images.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/domain/controllers/bottomnav_controller.dart';
import 'package:delievery_app/presentations/screens/chat/chat.dart';
import 'package:delievery_app/presentations/screens/post/post.dart';
import 'package:delievery_app/presentations/screens/task/mytask.dart';
import 'package:delievery_app/presentations/screens/task/task_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
        Get.put(BottomNavController());
    final BottomNavController controller = Get.find();

    final List<Widget> screens = [
       const Mytask(),
      const TaskDetail(),
      const PostScreen (),
      const ChatScreen(),
    ];
    return Scaffold(
      body: Obx(() => screens[bottomNavController.currentIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeTab,
            selectedItemColor: AppColors.secondry,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.mytask)),
                  label: Constants.viewtasks),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.mytask)), label: Constants.viewtasks),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.post)),
                  label: Constants.post),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppImages.chat)),
                  label: Constants.chat),
             
            ],
          ),
          ),
    );
    //////////
  }
}