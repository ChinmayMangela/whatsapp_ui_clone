import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/domain/models/user.dart';
import 'package:whatsapp_ui_clone/presentation/pages/specific_user_info_page.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/app_bar_icons.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/chats_list.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  final _textFieldFocusNode = FocusNode();

  @override
  void dispose() {
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SpecificUserInfoPage(user: widget.user),
            ),
          );
        },
        child: CustomText(text: widget.user.name, textSize: 16, isBoldFont: true),
      ),
      actions: [
        buildPhoneCallButton(),
        buildMoreIconButton(context),
      ],
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            )),
        const ChatsList(),
        Positioned(
          bottom: 5,
          left: 5,
          right: 5,
          child: Row(
            children: [
              Expanded(
                child: _buildTextField(),
              ),
              _buildMicButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextField() {
    return TextField(
      focusNode: _textFieldFocusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(10, 37, 46, 1.0),
        prefixIcon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey,),
        suffix: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.attach_file_outlined, color: Colors.grey,),
            SizedBox(width: 10),
            Icon(Icons.camera_alt_outlined, color: Colors.grey,),
          ],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color.fromRGBO(10, 37, 46, 1.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color.fromRGBO(10, 37, 46, 1.0)
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color.fromRGBO(10, 37, 46, 1.0)
          ),
        ),
        hintText: 'message...',
      ),
    );
  }

  Widget _buildMicButton() {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle
      ),
      child: IconButton(
        icon: const Icon(Icons.mic_rounded, color: Colors.black,),
        onPressed: () {
        },
      ),
    );
  }
}
