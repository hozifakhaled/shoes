import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSummary extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const PaymentSummary({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 7.0,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: items
              .map((item) => Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item['name'].toString()),
                        Text(
                          "\$${item['price'] as int}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
