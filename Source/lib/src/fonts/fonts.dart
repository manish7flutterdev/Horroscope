import 'package:flutter/material.dart';

class CustomFonts{

  static regular(double fontSize,Color colors){
    return TextStyle(
                fontSize: fontSize,
                color: colors,
                fontFamily: 'Open Sans',
      fontWeight: FontWeight.w400,
            );
  }

  static medium(double fontSize,Color colors){
    return TextStyle(
                fontSize: fontSize,
                color: colors,
                fontFamily: 'Open Sans',
      fontWeight: FontWeight.w500,
            );
  }
}