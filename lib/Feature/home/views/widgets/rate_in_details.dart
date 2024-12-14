import 'package:flutter/material.dart';
import 'package:shoes/core/styles/text_styles.dart';

class RateInDetails extends StatelessWidget {
  const RateInDetails({
    super.key, required this.rate,
  });
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Rate : ', style: Styles.rsteindetails()),
        Text(rate)
      ],
    );
  }
}
