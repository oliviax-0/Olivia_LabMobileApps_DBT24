import 'package:flutter/material.dart';
import 'package:instagramapp/model/message_model.dart';
import 'package:instagramapp/screens/chat_screen.dart';
import 'package:instagramapp/data/mock_data.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key, required this.message});

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final conversation = conversationData.firstWhere(
          (c) => c.user.username == message.sender.username,
          // orElse is executed if no element is found
          orElse: () {
            // As a fallback, just take the first conversation.
            // This might happen if you have messages from users who don't have a full conversation history in mock_data.
            return conversationData.first;
          },
        );
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatScreen(conversation: conversation),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(message.sender.avatarUrl),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.sender.username,
                    style: TextStyle(
                      fontWeight: message.isSeen
                          ? FontWeight.normal
                          : FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    message.lastMessage,
                    style: TextStyle(
                      color: message.isSeen
                          ? const Color(0xFF7C8A99)
                          : Colors.white,
                      fontWeight: message.isSeen
                          ? FontWeight.normal
                          : FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            const Icon(Icons.camera_alt_outlined, color: Color(0xFF7C8A99)),
          ],
        ),
      ),
    );
  }
}
