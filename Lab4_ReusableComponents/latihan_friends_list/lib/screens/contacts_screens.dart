import 'package:flutter/material.dart';
import 'package:latihan_friends_list/data/mock_data.dart';
import 'package:latihan_friends_list/widgets/contact_card.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: ListView.builder(
        itemCount: friendsData.length,
        itemBuilder: (context, index) {
          final user = friendsData[index];
          return ContactCard(user: user);
        },
      ),
    );
  }
}
