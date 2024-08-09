import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/data/dummy_users.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/settings_component_list.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Settings'),
      actions: const [
        Icon(Icons.search),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildHeadComponent(),
          const Divider(thickness: 0.3, color: Colors.grey),
          const SettingsComponentList(),
          const CustomText(text: '    Also from Meta', textSize: 15, isBoldFont: false, textColor: Colors.grey),
          _buildSocialTile(FontAwesomeIcons.instagram, 'Open Instagram'),
          _buildSocialTile(FontAwesomeIcons.facebook, 'Open Facebook')
        ],
      ),
    );
  }

  Widget _buildHeadComponent() {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: NetworkImage(
          dummyUsers[0].profilePic,
        ),
      ),
      title: const CustomText(
        text: 'Chinmay Mangela',
        textSize: 20,
        isBoldFont: true,
      ),
      subtitle: Text(
        'Your love makes me strong, your hate makes me unstoppable',
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.lato(
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
      trailing: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.qr_code, color: Colors.green),
          SizedBox(width: 10),
          Icon(Icons.expand_circle_down_outlined, color: Colors.green,)
        ],
      ),
    );
  }

  Widget _buildSocialTile(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon),
      title: CustomText(text: label, textSize: 15, isBoldFont: false,),
    );
  }
}
