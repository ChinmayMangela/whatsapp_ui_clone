import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/dummy_users.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/mobile_appbar.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/status_list.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/user_message_tile.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMobileAppBar(selectedIndex),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(text: 'Status', textSize: 20, isBoldFont: true),
          const SizedBox(height: 10),
          const SizedBox(height: 120, child: StatusList()),
          const Divider(),
          _buildChannelsComponent(),
        ],
      ),
    );
  }

  Widget _buildChannelsComponent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(text: 'Channels', textSize: 20, isBoldFont: false),
            _buildTextButton(),
          ],
        ),
        UserMessageTile(user: dummyUsers[6]),
        UserMessageTile(user: dummyUsers[7]),
      ],
    );
  }

  Widget _buildTextButton() {
    return TextButton(
      onPressed: () {},
      child: const CustomText(
        textSize: 16,
        isBoldFont: false,
        text: 'Explore',
        textColor: Colors.green,
      ),
    );
  }
}
