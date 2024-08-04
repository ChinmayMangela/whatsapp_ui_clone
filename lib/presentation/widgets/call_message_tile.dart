import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/domain/models/user.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';

class CallMessageTile extends StatelessWidget {
  const CallMessageTile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          user.profilePic,
        ),
      ),
      title: CustomText(
        text: user.name,
        textSize: 15,
        isBoldFont: false,
      ),
      subtitle: _buildSubTitle(),
      trailing: const Icon(Icons.call),
    );
  }

  Widget _buildSubTitle() {
    return Row(
      children: [
        Icon(
          user.id % 2 == 0 ? Icons.arrow_forward : Icons.arrow_back,
          color: user.id & 2 == 0 ? Colors.green : Colors.red,
        ),
        const CustomText(
          text: '1 August, 7:57 pm',
          textSize: 12,
          isBoldFont: false,
          textColor: Colors.grey,
        ),
      ],
    );
  }
}
