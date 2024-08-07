import 'dart:math';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';
import 'package:whatsapp_ui_clone/domain/models/user.dart';

class SpecificUserInfoPage extends StatelessWidget {
  const SpecificUserInfoPage({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildUserProfilePicture(),
          const SizedBox(height: 10),
          _buildUserName(),
          const SizedBox(height: 8),
         _buildUserPhoneNumber(),
          const SizedBox(height: 20),
          _buildActionIconsRow(),
        ],
      ),
    );
  }

  Widget _buildUserProfilePicture() {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
        user.profilePic,
      ),
    );
  }

  Widget _buildUserName() {
    return CustomText(text: user.name, textSize: 18, isBoldFont: false);
  }

  Widget _buildUserPhoneNumber() {
    double number = Random().nextDouble() * 9999999999;
    return CustomText(
      text: '+91 ${number.round()}',
      textSize: 15,
      isBoldFont: false,
      textColor: Colors.grey,
    );
  }
  Widget _buildIconContainer(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.all(7),
      height: 70,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.green),
          const SizedBox(height: 5),
          CustomText(text: label, textSize: 12, isBoldFont: false),
        ],
      ),
    );
  }

  Widget _buildActionIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildIconContainer(Icons.phone_outlined, 'Audio'),
        _buildIconContainer(Icons.videocam_outlined, 'Video'),
        _buildIconContainer(Icons.currency_rupee, 'Pay'),
        _buildIconContainer(Icons.search, 'Search'),
      ],
    );
  }
}
