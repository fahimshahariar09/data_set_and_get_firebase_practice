import 'package:firebase_practice/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.buttonName,
      this.textColor,
      this.buttonColor,
      this.buttonHeight,
      this.buttonWidth,
      required this.onTap});

  final String buttonName;
  final Color? textColor;
  final Color? buttonColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: buttonColor ?? Colors.orange,
        child: SizedBox(
          height: buttonHeight ?? 50,
          width: buttonWidth ?? MediaQuery.sizeOf(context).width,
          child: Center(
            child: CommonText(
              titel: buttonName,
              fColor: textColor ?? Colors.black,
              fSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
