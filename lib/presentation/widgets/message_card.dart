import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/constants.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.message, required this.date, required this.isMyMessage,});

  final String message;
  final String date;
  final bool isMyMessage;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          color: messageColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 30, top: 5, bottom: 20),
                child: CustomText(text: message, textSize: 16, isBoldFont: false,),
              ),
              Positioned(
                bottom: isMyMessage ? 4 : 2,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(text: date, textSize: 11, isBoldFont: false,),
                  const SizedBox(width: 5,),
                  const Icon(Icons.done_all, size: 15,),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
