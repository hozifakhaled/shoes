// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle hintStyle() {
    return TextStyle(
        color: const Color.fromARGB(255, 90, 89, 89),
        fontWeight: FontWeight.w400,
        fontSize: 15.sp);
  }

  static TextStyle rsteindetails() {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp);
  }

  static TextStyle descindetails() {
    return TextStyle(color: Colors.black.withOpacity(0.75));
  }

  static TextStyle priceIndetails() {
    return TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold);
  }

  static TextStyle addtocartindetails() {
    return TextStyle(color: Colors.white, fontSize: 15.sp);
  }

  static TextStyle titleindetails() {
    return TextStyle(
        color: Colors.black,
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'inter');
  }
   static TextStyle menshoses() {
    return TextStyle( color: Colors.black.withOpacity(.75), fontSize: 12.sp);
  }
}
