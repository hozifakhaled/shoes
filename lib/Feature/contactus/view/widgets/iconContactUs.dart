import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconContactUs extends StatelessWidget {
  const IconContactUs({
    super.key,
    required this.onPressed,
    required this.text, required this.icon,
  });
  final void Function() onPressed;
 final Icon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 5.h,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: icon,),
        Text(
          text,
          style: TextStyle(fontSize: 18.sp),
         // maxLines: 2,
        )
      ],
    );
  }
}
