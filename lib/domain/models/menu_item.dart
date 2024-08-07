
import 'dart:ui';

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
  final VoidCallback onTap;

  const MenuItem({
    required this.name,
    required this.onTap,
  });
}

final Map<MenuItemCategory, MenuItem> menuItems = {
  MenuItemCategory.NewGroup: MenuItem(
    name: 'New Group',
    onTap: () {},
  ),
  MenuItemCategory.NewPodcast: MenuItem(
    name: 'New Podcast',
    onTap: () {

    },
  ),
  MenuItemCategory.LinkedDevices: MenuItem(
    name: 'Linked Devices',onTap: () {

  },
  ),
  MenuItemCategory.StarredMessages: MenuItem(
    name: 'Starred Messages',
    onTap: () {
    },
  ),
  MenuItemCategory.Payments: MenuItem(
    name: 'Payments',
    onTap: () {
    },
  ),
  MenuItemCategory.Settings: MenuItem(
    name: 'Settings',
    onTap: () {
    },
  ),
};
