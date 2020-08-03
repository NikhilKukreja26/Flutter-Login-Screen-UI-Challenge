import 'package:flutter/material.dart';

import '../core/size_config.dart';

enum ButtonType { Only_Text, With_Icon_Text }

class BuildButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final double elevation;
  final String title;
  final double width;
  final Function onPressed;

  BuildButton({
    this.buttonColor,
    this.textColor,
    this.elevation = 5.0,
    this.title,
    this.width,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: RaisedButton(
        color: buttonColor,
        elevation: elevation,
        padding: EdgeInsets.all(2.2 * SizeConfig.heightMultiplier),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(4.4 * SizeConfig.heightMultiplier),
        ),
        child: Text(
          title ?? '',
          style: TextStyle(
            color: Colors.white,
            fontSize: 2.63 * SizeConfig.textMultiplier,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
