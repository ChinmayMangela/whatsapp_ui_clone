import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/persons_list.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_floating_action_button.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_textfield.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/mobile_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.selectedIndex,});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMobileAppBar(selectedIndex, context),
      body: _buildBody(),
      floatingActionButton: const CustomFloatingActionButton(
        icon: Icons.add_comment_rounded,
      ),
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
            child: PersonsList(),
          )
        ],
      ),
    );
  }
}
