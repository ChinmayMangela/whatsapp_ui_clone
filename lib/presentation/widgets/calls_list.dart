import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/dummy_users.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/call_message_tile.dart';

class CallsList extends StatelessWidget {
  const CallsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final currentUser = dummyUsers[index];
        return CallMessageTile(user: currentUser);
      },
      itemCount: dummyUsers.length,
    );
  }
}
