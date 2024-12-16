// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/cart/view/widgets/columnNameinItemCart.dart';
import 'package:shoes/Feature/cart/view/widgets/columnPriceCart.dart';
import 'package:shoes/core/constants/contextExtension.dart';

class itemCart extends StatelessWidget {
  const itemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height * .13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffFFFFFFEFEFEF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 10.w,
          children: [
            Image.asset(
              'assets/images/logo_in_splas_screen.png',
              height: context.height * .1,
              width: context.height * .1,
            ),
            const ColumnNameinItemcart(),
            SizedBox(width: 20.w,),
            const columnPriceCart()
          ],
        ),
      ),
    );
  }
}

