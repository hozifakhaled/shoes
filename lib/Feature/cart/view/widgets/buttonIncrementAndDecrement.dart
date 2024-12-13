import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buttonIncrementAndDecrement extends StatelessWidget {
  const buttonIncrementAndDecrement({
    super.key, required this.math,
  });
  final String math;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 25.h,
        height: 25.h,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Text(
          math,
          style: TextStyle(fontSize: 15.sp,color: Colors.white),
        )));
  }
}
