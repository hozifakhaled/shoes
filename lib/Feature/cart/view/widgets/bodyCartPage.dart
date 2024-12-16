// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/cart/view/widgets/appBarCartPage.dart';
import 'package:shoes/Feature/cart/view/widgets/buttonBuyNow.dart';
import 'package:shoes/Feature/cart/view/widgets/listViewbuilderItemsCart.dart';
import 'package:shoes/Feature/cart/view/widgets/rowPriceInCart.dart';

class BodyCartPage extends StatelessWidget {
  const BodyCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            const AppBarCartPage(),
            const  ListViewbuilderItemsCart(),
            const RowPriceIncart(text: 'Subtotal', price: '\$150'),
            const RowPriceIncart(text: 'Shipping Cost', price: '\$8.00'),
            const RowPriceIncart(text: 'Tax', price: '\$0.0'),
            const RowPriceIncart(
              text: 'Total',
              price: '\$158',
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 5.h,),
            const ButtonBuyNow()
          ],
        ),
      ),
    );
  }
}

