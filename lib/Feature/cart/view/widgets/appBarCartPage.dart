// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarCartPage extends StatelessWidget {
  const AppBarCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 100.w,
      children: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new)),
      Text('Cart',style: TextStyle(fontSize: 25.sp,fontFamily: 'inter'),)
    ],);
  }
}
