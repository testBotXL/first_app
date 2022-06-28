import 'package:first_app/common_widgets/custom_raised_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class SignInButton extends CustomRaisedButton{
  SignInButton({ String? text, required  Color color, Color? textColor, required VoidCallback onPressed}) :
      super(
      child: Text(
      text!,
      style: TextStyle(color: textColor, fontSize: 15.0),
      ),
      color: color,
      height: 40.0,
      borderRadius: 8.0,
      onPressed: onPressed,
      );

}