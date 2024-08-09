import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/mobile_appbar.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key, required this.selectedIndex,});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMobileAppBar(selectedIndex, context),
    );
  }
}
