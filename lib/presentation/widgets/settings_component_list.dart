import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/data/settings_component_data.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/settings_component_tile.dart';

class SettingsComponentList extends StatelessWidget {
  const SettingsComponentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: settingComponents.length,
      itemBuilder: (context, index) {
        return SettingsComponentTile(
          settingsComponent: settingComponents[index],
        );
      },
    );
  }
}
