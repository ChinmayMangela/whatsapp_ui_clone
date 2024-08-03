import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';

import '../../domain/models/user.dart';

class UserMessageTile extends StatelessWidget {
  const UserMessageTile({super.key, required this.user,});

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          user.profilePic,
        ),
      ),
      title: CustomText(text: user.name, textSize: 17, isBoldFont: false),
      subtitle: CustomText(text: user.message, textSize: 13, isBoldFont: false, textColor: Colors.grey),
      trailing: CustomText(text: user.time, textSize: 12, isBoldFont: false, textColor: Colors.grey),
    );
  }
}
