import 'package:flutter/material.dart';
import 'package:shoes/core/styles/text_styles.dart';

class LastPartInDetails extends StatelessWidget {
  const LastPartInDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text('₹ 15,999', style: Styles.priceIndetails()),
       Container(
         padding: const EdgeInsets.all(10),
         decoration: BoxDecoration(
           color: Colors.black,
           borderRadius: BorderRadius.circular(40),
         ),
         child: GestureDetector(
           onTap: () {},
           child: Text('Add To Cart', style: Styles.addtocartindetails(),),
         ),
       )
     ],
    );
  }
}