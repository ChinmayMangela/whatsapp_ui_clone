import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/app_bar_icons.dart';
import 'package:whatsapp_ui_clone/presentation/widgets/custom_text.dart';

AppBar buildMobileAppBar(int selectedIndex, BuildContext context) {
  return AppBar(
    title: CustomText(text: getAppBarName(selectedIndex), textSize: 25, isBoldFont: false,),
    actions: getActions(selectedIndex, context),
  );
}

String getAppBarName(int selectedIndex) {
  switch(selectedIndex) {
    case 0:
      return 'WhatsApp';
    case 1:
      return 'Updates';
    case 2:
      return 'Communities';
    default:
      return 'Calls';
  }
}

List<Widget> getActions(int selectedIndex, BuildContext context) {
  if(selectedIndex == 0 || selectedIndex == 2) {
    return [
      buildQRCodeIconButton(),
      buildCameraIconButton(),
      buildMoreIconButton(context),
    ];
  } else {
    return [
      buildQRCodeIconButton(),
      buildCameraIconButton(),
      buildSearchIconButton(),
      buildMoreIconButton(context),
    ];
  }
}