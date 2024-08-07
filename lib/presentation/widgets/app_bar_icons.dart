import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/domain/models/menu_item.dart';

Widget buildQRCodeIconButton() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.qr_code_scanner),
    color: Colors.white,
  );
}

Widget buildCameraIconButton() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.camera_alt_outlined),
    color: Colors.white,
  );
}

Widget buildSearchIconButton() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.search),
    color: Colors.white,
  );
}

Widget buildMoreIconButton() {
  return PopupMenuButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: const Color.fromRGBO(8, 27, 35, 1.0),
      elevation: 0.3,
      itemBuilder: (context) {
    return menuItems.entries.map((menuItem) {
      return PopupMenuItem(
        child: ListTile(
          title: Text(menuItem.value.name),
        ),
      );
    }).toList();
  });
}

Widget buildVideoCallButton() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.video_call),
    color: Colors.white,
  );
}

Widget buildPhoneCallButton() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.phone_outlined),
    color: Colors.white,
  );
}
