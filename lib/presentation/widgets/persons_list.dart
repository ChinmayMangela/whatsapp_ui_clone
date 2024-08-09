import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/dummy_users.dart';
import 'package:whatsapp_ui_clone/presentation/pages/conversation_screen.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/user_message_tile.dart';

class PersonsList extends StatelessWidget {
  const PersonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ConversationScreen(
                  user: dummyUsers[index],
                ),
              ),
            );
          },
          child: UserMessageTile(
            user: dummyUsers[index],
          ),
        );
      },
      itemCount: dummyUsers.length,
    );
  }
}
