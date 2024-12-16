// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowPriceIncart extends StatelessWidget {
  const RowPriceIncart({
    super.key,
    required this.text,
    required this.price, this.fontWeight,
  });
  final String text;
  final String price;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
        ),
        Text(
          price,
          style: TextStyle(fontSize: 18.sp, fontWeight: fontWeight),
        )
      ],
    );
  }
}
