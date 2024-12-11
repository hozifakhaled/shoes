// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shoes/core/styles/text_styles.dart';

class TextfieldInHome extends StatelessWidget {
  const TextfieldInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: Styles.hintStyle(),
        filled: true, // قم بتمكين الخلفية
        fillColor: Colors.grey.withOpacity(0.2), // لون الخلفية
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
