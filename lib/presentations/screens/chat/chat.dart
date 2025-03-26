import 'package:delievery_app/core/app_colors.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(userImage),
              radius: 20,
            ),
            const SizedBox(width: 10),
            Text(userName),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                // Sample received message
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Container(
                //     padding: EdgeInsets.all(12),
                //     margin: EdgeInsets.only(bottom: 8),
                //     decoration: BoxDecoration(
                //       color: Color(0xFFE0E0E0), // Fixed issue
                //       borderRadius: BorderRadius.only(
                //         topRight: Radius.circular(16),
                //         bottomRight: Radius.circular(16),
                //         bottomLeft: Radius.circular(16),
                //       ),
                //     ),
                //     child: Text("Hello, I didn't receive my product yet!"),
                //   ),
                // ),

                // // Sample sent message
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Container(
                //     padding: EdgeInsets.all(12),
                //     margin: EdgeInsets.only(bottom: 8),
                //     decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(16),
                //         bottomRight: Radius.circular(16),
                //         bottomLeft: Radius.circular(16),
                //       ),
                //     ),
                //     child: Text(
                //       "We'll check and get back to you soon",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          // Message input field
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  offset: Offset(0, -4),
                  spreadRadius: 0
                )
              ]
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
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
                        margin: const EdgeInsets.only(top: 6,left: 11,right: 24,bottom: 7),
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
                        margin: const EdgeInsets.only(right: 7,top: 6,bottom: 7),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.secondry,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(Icons.send, size: 20),
                            color: Colors.white,
                            onPressed: () {
                              // Handle send button press
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
