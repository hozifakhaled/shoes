import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/cart/view/widgets/bodyCartPage.dart';
import 'package:shoes/Feature/cart/view/widgets/rowPriceInCart.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyCartPage(),
      ),
    );
  }
}

