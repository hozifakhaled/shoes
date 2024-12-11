import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class rowNameShoesAndCart extends StatelessWidget {
  const rowNameShoesAndCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        Container(
          width: 35.h,
          height: 35.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
          child: IconButton(
              onPressed: () {},
              icon: Center(
                child: Icon(
                  CupertinoIcons.cart,
                  size: 20.h,
                  color: Colors.white,
                ),
              )),
        )
      ],
    );
  }
}
