import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/pages/settings_page.dart';

enum MenuItemCategory {
  NewGroup,
  NewPodcast,
  LinkedDevices,
  StarredMessages,
  Payments,
  Settings,
}

class MenuItem {
  final String name;
  final void Function(BuildContext context) onTap;

  const MenuItem({
    required this.name,
    required this.onTap,
  });
}

final Map<MenuItemCategory, MenuItem> menuItems = {
  MenuItemCategory.NewGroup: MenuItem(
    name: 'New Group',
    onTap: (context) {},
  ),

  MenuItemCategory.NewPodcast: MenuItem(
    name: 'New Podcast',
    onTap: (context) {},
  ),

  MenuItemCategory.LinkedDevices: MenuItem(
    name: 'Linked Devices',
    onTap: (context) {},
  ),

  MenuItemCategory.StarredMessages: MenuItem(
    name: 'Starred Messages',
    onTap: (context) {},
  ),

  MenuItemCategory.Payments: MenuItem(
    name: 'Payments',
    onTap: (context) {},
  ),

  MenuItemCategory.Settings: MenuItem(
    name: 'Settings',
    onTap: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        ),
      );
    },
  ),
};
