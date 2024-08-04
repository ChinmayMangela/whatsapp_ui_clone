import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/dummy_users.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/status_bubble.dart';

class StatusList extends StatelessWidget {
  const StatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final currentUser = dummyUsers[index];
        return StatusBubble(user: currentUser);
      },
      itemCount: dummyUsers.length,
    );
  }
}
