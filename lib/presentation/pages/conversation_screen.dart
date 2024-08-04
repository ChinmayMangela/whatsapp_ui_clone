import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/domain/models/user.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/app_bar_icons.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title:
          CustomText(text: user.name, textSize: 16, isBoldFont: true),
      actions: [
        buildVideoCallButton(),
        buildPhoneCallButton(),
        buildMoreIconButton(),
      ],
    );
  }
}
