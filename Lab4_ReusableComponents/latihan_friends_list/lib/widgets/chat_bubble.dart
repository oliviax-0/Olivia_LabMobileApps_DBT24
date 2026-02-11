import 'package:flutter/material.dart';
import 'package:latihan_friends_list/models/message_model.dart';

class ChatBubble extends StatelessWidget {
  final Message message;

  const ChatBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: message.isMe ? Colors.blue[100] : Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: message.isMe
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.start,
          children: [
            Text(message.time, textAlign: message.isMe ? TextAlign.end : TextAlign.start, style: const TextStyle(fontSize: 12, color: Colors.grey)
            ),
            const SizedBox(height: 4),
            Text(message.text, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
