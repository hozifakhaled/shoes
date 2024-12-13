import 'package:flutter/material.dart';
import 'package:shoes/Feature/cart/view/widgets/itemCart.dart';
import 'package:shoes/core/constants/contextExtension.dart';

class ListViewbuilderItemsCart extends StatelessWidget {
  const ListViewbuilderItemsCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: context.height*.5,
     child: ListView.builder(
       
       itemCount: 2,
       itemBuilder: (BuildContext context, int index) {
         return Padding(
           padding: const EdgeInsets.symmetric(vertical: 10.0),
           child: const itemCart(),
         ) ;
       },
     ),
    );
  }
}

