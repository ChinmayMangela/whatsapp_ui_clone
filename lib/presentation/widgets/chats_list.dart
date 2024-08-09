import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/dummy_users.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/message_card.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
            isMyMessage: true,
          );
        } else {
          return MessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
            isMyMessage: false,
          );
        }
      },
    );
  }
}
