import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentTotal extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const PaymentTotal({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final total = items.fold<int>(0, (sum, item) => sum + (item['price'] as int));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Price',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp),
        ),
        Text(
          "\$$total",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
