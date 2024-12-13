import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/cart/view/widgets/buttonIncrementAndDecrement.dart';

class columnPriceCart extends StatelessWidget {
  const columnPriceCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '\$150',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'inter'),
        ),
        Row(
          spacing: 15.w,
          children: [
            buttonIncrementAndDecrement(math:  '+'),
    
             Text(
          '4',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'inter'),
        ),
            buttonIncrementAndDecrement( math: '-',)
          ],
        )
      ],
    );
  }
}

