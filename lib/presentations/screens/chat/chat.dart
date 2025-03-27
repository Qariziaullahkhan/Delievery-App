import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/domain/controllers/chat_controller.dart';
import 'package:delievery_app/presentations/widgets/chat_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatelessWidget {
  final String userName;
  final String userImage;

  const ChatScreen({
    super.key,
    required this.userName,
    required this.userImage,
  });

  @override

  Widget build(BuildContext context) {
    final ChatController chatController = Get.put(ChatController());

    return Scaffold(
    appBar: ChattAppbar(
      title: userName,
      userImage: userImage,
      onBackPressed: () => Navigator.pop(context),
      backgroundColor: AppColors.primary,
      iconColor: AppColors.primary,
      textColor: Colors.white,
    ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: chatController.messages.length,
                itemBuilder: (context, index) {
                  final message = chatController.messages[index];
                  return Align(
                    alignment: message.isMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: message.isMe
                            ? AppColors.primary
                            : const Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20),
                          topRight: const Radius.circular(20),
                          bottomLeft: message.isMe
                              ? const Radius.circular(20)
                              : Radius.zero,
                          bottomRight: message.isMe
                              ? Radius.zero
                              : const Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            message.text,
                            style: TextStyle(
                              color:
                                  message.isMe ? Colors.white : Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            DateFormat('hh:mm a').format(message.time),
                            style: TextStyle(
                              fontSize: 10,
                              color: message.isMe
                                  ? Colors.white70
                                  : Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Your existing message input field
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  offset: const Offset(0, -4),
                  spreadRadius: 0,
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: chatController.messageController,
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(
                            top: 6, left: 11, right: 24, bottom: 7),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.secondry,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(Icons.add, size: 20),
                            color: AppColors.white,
                            onPressed: () {
                              // Handle attachment/photo button press
                            },
                          ),
                        ),
                      ),
                      suffixIcon: Container(
                        margin: const EdgeInsets.only(
                            right: 7, top: 6, bottom: 7),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.secondry,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(Icons.send, size: 20),
                            color: Colors.white,
                            onPressed: chatController.sendMessage,
                          ),
                        ),
                      ),
                    ),
                    onSubmitted: (text) => chatController.sendMessage(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}