import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final TextEditingController messageController = TextEditingController();
  final RxList<ChatMessage> messages = <ChatMessage>[].obs;

  void sendMessage() {
    if (messageController.text.trim().isEmpty) return;

    messages.add(
      ChatMessage(
        text: messageController.text,
        isMe: true,
        time: DateTime.now(),
      ),
    );
    messageController.clear();
  }
}

class ChatMessage {
  final String text;
  final bool isMe;
  final DateTime time;

  ChatMessage({
    required this.text,
    required this.isMe,
    required this.time,
  });
}