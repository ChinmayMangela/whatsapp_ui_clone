import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/calls_list.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_floating_action_button.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/mobile_appbar.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMobileAppBar(selectedIndex),
      body: _buildBody(),
      floatingActionButton: const CustomFloatingActionButton(
        icon: Icons.add_ic_call_sharp,
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextWithPadding('Favorites'),
          const SizedBox(height: 20),
          _buildAddFavoriteComponent(),
          const SizedBox(height: 20),
          _buildTextWithPadding('Recent'),
          const SizedBox(height: 12),
          const Expanded(child: CallsList())
        ],
      ),
    );
  }

  Widget _buildAddFavoriteComponent() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          _buildFavoriteButton(),
          const SizedBox(
            width: 10,
          ),
          const CustomText(
            text: 'Add to Favorites',
            textSize: 14,
            isBoldFont: false,
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: const Center(
        child: Icon(
          Icons.favorite,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildTextWithPadding(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: CustomText(text: text, textSize: 15, isBoldFont: true),
    );
  }
}
