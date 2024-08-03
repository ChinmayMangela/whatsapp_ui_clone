import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/dummy_users.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/user_message_tile.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return UserMessageTile(
          user: dummyUsers[index],
        );
      },
      itemCount: dummyUsers.length,
    );
  }
}
