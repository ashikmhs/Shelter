import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  TextStyle myTextStyle =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp);

  InputDecoration textFieldDecoration(String hintText) => InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 15.sp, color: Colors.black),
      );
}
