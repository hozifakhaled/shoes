import 'package:flutter/material.dart';
import 'package:shoes/core/styles/text_styles.dart';

class RateInDetails extends StatelessWidget {
  const RateInDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
     children: [
       Text('Rate : ', style: Styles.rsteindetails()),
       const Text('3.5')
     ],
    );
  }
}