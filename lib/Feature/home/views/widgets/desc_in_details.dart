import 'package:flutter/material.dart';
import 'package:shoes/core/styles/text_styles.dart';

class DescInDetails extends StatelessWidget {
  const DescInDetails({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
        text,
        style: Styles.descindetails());
  }
}
