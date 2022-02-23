import 'package:flutter/material.dart';

class MyColoredButton extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onPressed;
  final Color buttonColor;
  final String text;
  final double textSize;
  final Color textColor;
  const MyColoredButton(
      {Key key,
      this.height,
      this.width,
      this.onPressed,
      this.buttonColor,
      this.text,
      this.textColor,
      this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: TextButton(
        onPressed: onPressed,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: textSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
