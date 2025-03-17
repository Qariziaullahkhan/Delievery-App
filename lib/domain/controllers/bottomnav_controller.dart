
import 'package:delievery_app/presentations/screens/chat/chat.dart';
import 'package:delievery_app/presentations/screens/home/home_screen.dart';
import 'package:delievery_app/presentations/screens/post/post.dart';
import 'package:delievery_app/presentations/screens/task/mytask.dart';
import 'package:delievery_app/presentations/screens/task/task_detail.dart';
import 'package:get/get.dart';


class BottomNavController extends GetxController {
  var currentIndex = 0.obs;
  final screens = [
    const HomeScreen(),
     const Mytask(),
    const TaskDetail(),
    const PostScreen(),
    const ChatScreen(),
  ];

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
