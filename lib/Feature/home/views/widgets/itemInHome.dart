import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/home/views/widgets/rowNameShoesAndCart.dart';
import 'package:shoes/core/constants/contextExtension.dart';

class ItemInHome extends StatelessWidget {
  const ItemInHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: context.width,
        height: context.height*.37,
       decoration: BoxDecoration(
        color: Color(0xffFFFFFFEFEFEF),
        borderRadius: BorderRadius.circular(30),
        
       ),
       child: Padding(
         padding: const EdgeInsets.all(28.0),
         child: Column(
          
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('₹ 15,999',style: TextStyle(fontSize: 16.sp,fontFamily: 'inter'),)),
            Image.asset('assets/images/logo_in_splas_screen.png',height:context.height*.22,),
            const rowNameShoesAndCart()
            
          ],
         ),
       ),
      ),
    );
  }
}

