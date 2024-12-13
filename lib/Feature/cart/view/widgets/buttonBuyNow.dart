import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/core/constants/contextExtension.dart';

class ButtonBuyNow extends StatelessWidget {
  const ButtonBuyNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height*.08,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(30)
      ),
      child: MaterialButton(onPressed: (){},child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 20.sp),),));
  }
}

