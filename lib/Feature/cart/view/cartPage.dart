// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shoes/Feature/cart/view/widgets/bodyCartPage.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BodyCartPage(),
      ),
    );
  }
}

