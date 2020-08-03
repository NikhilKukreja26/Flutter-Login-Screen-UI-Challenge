import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildTextField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPasswordField;
  bool obscureText;
  final TextInputType keyBoardType;
  final TextInputAction textInputAction;
  final FocusNode focusNode;

  BuildTextField({
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.isPasswordField = false,
    this.keyBoardType,
    this.focusNode,
    this.textInputAction,
  });

  @override
  _BuildTextFieldState createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hintText,
        prefixIcon: widget.isPasswordField
            ? InkWell(
                child: IconButton(
                  icon: Icon(
                    widget.obscureText ? Icons.lock : Icons.lock_open,
                    color: Colors.deepOrange,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                ),
              )
            : Icon(
                widget.prefixIcon,
                color: Colors.deepOrange,
              ),
      ),
      cursorColor: Colors.deepOrange,
      obscureText: widget.obscureText,
      keyboardType: widget.keyBoardType,
      textInputAction: widget.textInputAction,
      focusNode: widget.focusNode,
    );
  }
}
