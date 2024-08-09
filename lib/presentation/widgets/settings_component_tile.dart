import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/domain/models/settings_component.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';

class SettingsComponentTile extends StatelessWidget {
  const SettingsComponentTile({super.key, required this.settingsComponent,});
  
  final SettingsComponent settingsComponent;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(settingsComponent.icon, size: 24,),
      title: CustomText(text: settingsComponent.title, textSize: 16, isBoldFont: false,),
      subtitle: CustomText(text: settingsComponent.description, textSize: 13, isBoldFont: false, textColor: Colors.grey),
    );
  }
}
