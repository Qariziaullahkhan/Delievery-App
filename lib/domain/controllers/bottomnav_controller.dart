
import 'package:delievery_app/presentations/screens/chat/chat.dart';
import 'package:delievery_app/presentations/screens/home/home_screen.dart';
import 'package:delievery_app/presentations/screens/post/post.dart';
import 'package:delievery_app/presentations/screens/task/view_task.dart';
import 'package:delievery_app/presentations/screens/task/my_task.dart';
import 'package:get/get.dart';


class BottomNavController extends GetxController {
  var currentIndex = 0.obs;
  final screens = [
    const HomeScreen(),
     const ViewTask(),
    const MyTask(),
    const PostScreen(),
    const ChatScreen(),
  ];

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
