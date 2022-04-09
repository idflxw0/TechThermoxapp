import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techthermoxapp/color/colors.dart';
import 'package:techthermoxapp/widgets/text_app.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  double size;
  bool? isIcon;
  String? text;
  IconData? icon;

  AppButtons(
      {Key? key,
      this.isIcon = false,
      this.icon,
      this.text = "hi",
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Center(child: Icon(icon, color: color)),
    );
  }
}
