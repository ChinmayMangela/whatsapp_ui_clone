import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/constants.dart';
import 'package:whatsapp_ui_clone/presentation/pages/calls_page.dart';
import 'package:whatsapp_ui_clone/presentation/pages/chats_page.dart';
import 'package:whatsapp_ui_clone/presentation/pages/communities_page.dart';
import 'package:whatsapp_ui_clone/presentation/pages/updates_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;

  void _changePage(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _buildPage(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildPage() {
    switch (selectedIndex) {
      case 0:
        return ChatsPage(selectedIndex: selectedIndex);
      case 1:
        return UpdatesPage(selectedIndex: selectedIndex);
      case 2:
        return CommunitiesPage(selectedIndex: selectedIndex);
      case 3:
        return CallsPage(selectedIndex: selectedIndex);
      default:
        return ChatsPage(selectedIndex: selectedIndex);
    }
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: backgroundColor,
      onTap: _changePage,
      currentIndex: selectedIndex,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.green.shade100,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'Chats',
          icon: Icon(Icons.chat_outlined),
          activeIcon: Icon(Icons.chat),
        ),
        BottomNavigationBarItem(
          label: 'Updates',
          icon: Icon(Icons.circle_outlined),
          activeIcon: Icon(Icons.circle),
        ),
        BottomNavigationBarItem(
          label: 'Communities',
          icon: Icon(Icons.groups_outlined),
          activeIcon: Icon(Icons.groups),
        ),
        BottomNavigationBarItem(
          label: 'Calls',
          backgroundColor: backgroundColor,
          icon: Icon(Icons.phone_outlined),
          activeIcon: Icon(Icons.phone),
        ),
      ],
    );
  }
}
