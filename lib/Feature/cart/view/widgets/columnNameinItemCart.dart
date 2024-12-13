import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumnNameinItemcart extends StatelessWidget {
  const ColumnNameinItemcart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 21.sp,
      children: [
          Text(
                  'Nike Air 321',
                  style: TextStyle(fontSize: 15.sp, fontFamily: 'inter'),
                ),
                Text(
                  'Nike Air 321',
                  style: TextStyle(fontSize: 11.sp, color: Colors.grey),
                ),
      ],
    );
  }
}
