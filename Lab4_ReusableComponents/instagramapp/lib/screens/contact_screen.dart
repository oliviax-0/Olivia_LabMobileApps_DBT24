import 'package:flutter/material.dart';
import 'package:instagramapp/data/mock_data.dart';
import 'package:instagramapp/widgets/contact_card.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1823),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0B1823),
        elevation: 0,
        title: const Row(
          children: [
            Text(
              'olivianrne_',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined, size: 26),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const _SearchBar(),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Messages',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Requests',
                  style: TextStyle(color: Color(0xFF4AA3FF), fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: messageData.length,
                itemBuilder: (context, index) {
                  final message = messageData[index];
                  return ContactCard(message: message);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search or ask Meta AI',
        hintStyle: const TextStyle(color: Color(0xFF7C8A99)),
        prefixIcon: const Icon(Icons.search, color: Color(0xFF7C8A99)),
        filled: true,
        fillColor: const Color(0xFF253443),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
