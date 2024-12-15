import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/stripe_payment/views/widgets/payment_summary.dart';
import 'package:shoes/Feature/stripe_payment/views/widgets/payment_total.dart';
import 'package:shoes/Feature/stripe_payment/views/widgets/payment_button.dart';

class StripePaymentViewBody extends StatelessWidget {
  const StripePaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'name': 'Farmer’s Pizza', 'price': 20},
      {'name': 'Cheese Pizza', 'price': 25},
      {'name': 'Veggie Pizza', 'price': 15},
      {'name': 'Farmer’s Pizza', 'price': 20},
      {'name': 'Cheese Pizza', 'price': 25},
      {'name': 'Veggie Pizza', 'price': 15},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
      child: Column(
        children: [
          Text(
            'Summary',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20.h),
          PaymentSummary(items: items),
          const Spacer(),
          Divider(color: Colors.black, thickness: 1, height: 4.h),
          SizedBox(height: 20.h),
          PaymentTotal(items: items),
          SizedBox(height: 20.h),
          const PaymentButton(),
        ],
      ),
    );
  }
}
