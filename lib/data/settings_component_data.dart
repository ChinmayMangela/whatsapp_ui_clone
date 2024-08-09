
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/domain/models/settings_component.dart';

const List<SettingsComponent> settingComponents = [
  SettingsComponent(icon: Icons.key, title: 'Account', description: 'Security notification, change number',),
  SettingsComponent(icon: Icons.lock, title: 'Privacy', description: 'Block contacts, disappearing messages',),
  SettingsComponent(icon: Icons.face, title: 'Avatar', description: 'Create, edit, profile photo',),
  SettingsComponent(icon: Icons.favorite_border, title: 'Favorites', description: 'Add, recorder, remmove',),
  SettingsComponent(icon: Icons.chat_outlined, title: 'Chats', description: 'Theme, wallpapers, data history',),
  SettingsComponent(icon: Icons.notifications_none, title: 'Notifications', description: 'Message, group & call tones',),
  SettingsComponent(icon: Icons.circle_outlined, title: 'Storage and data', description: 'Network usage, auto download',),
  SettingsComponent(icon: Icons.language, title: 'App language', description: 'English (device\'s language',),
  SettingsComponent(icon: Icons.question_mark_rounded, title: 'Help', description: 'Help centre, contact us, privacy policy',),
  SettingsComponent(icon: Icons.group_outlined, title: 'Invite a friend', description: '',),
];