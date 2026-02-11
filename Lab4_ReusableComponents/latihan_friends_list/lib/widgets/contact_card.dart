import 'package:flutter/material.dart';
import 'package:latihan_friends_list/models/user_model.dart';
import 'package:latihan_friends_list/screens/chat_screen.dart';

class ContactCard extends StatelessWidget {
  final User user;

  const ContactCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen(user: user)),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.imageUrl),
                radius: 35,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      user.lastMessage,
                      style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 47, 47, 47)),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    user.time,
                    style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  const SizedBox(height: 4),
                  const Icon(Icons.check_circle, color: Colors.blue, size: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
