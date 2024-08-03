import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/constants.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/chats_list.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_floating_action_button.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_textfield.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: backgroundColor,
      title: const CustomText(text: 'WhatsApp', textSize: 25, isBoldFont: false,),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner), color: Colors.white,),
        IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined), color: Colors.white,),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert), color: Colors.white,),
      ],
    );
  }

  Widget _buildBody() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          CustomTextField(),
          SizedBox(height: 10),
          Expanded(
            child: ChatsList(),
          )
        ],
      ),
    );
  }
}
