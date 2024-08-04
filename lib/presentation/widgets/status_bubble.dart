import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/domain/models/user.dart';

class StatusBubble extends StatelessWidget {
  const StatusBubble({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(4),
          width: 84,
          height: 84,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 2.0,
            ),
            shape: BoxShape.circle,
            color: Colors.purple,
          ),
        ),
        Text(user.name, overflow: TextOverflow.ellipsis, style: GoogleFonts.lato(
          fontSize: 12,
        ),)
      ],
    );
  }
}
