// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:myhealthcop/colours.dart';

class ButtonTemplate extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final double buttonHeight;
  final Function() buttonAction;
  final Color fontColor;
  final double textSize;
  final double buttonBorderRadius;
  final bool loading;

  const ButtonTemplate({
    Key? key,
    required this.buttonName,
    required this.buttonColor,
    required this.buttonHeight,
    required this.buttonAction,
    required this.fontColor,
    required this.textSize,
    required this.buttonBorderRadius,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colours.previewButtonColor.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 3,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: buttonAction,
        color: buttonColor,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadius),
        ),
        padding: const EdgeInsets.all(15),
        elevation: 0,
        child: Text(
          buttonName,
          style: TextStyle(
            color: fontColor,
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
