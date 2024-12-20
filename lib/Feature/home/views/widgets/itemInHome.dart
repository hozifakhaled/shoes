// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/home/views/widgets/rowNameShoesAndCart.dart';
import 'package:shoes/core/constants/contextExtension.dart';
import 'package:shoes/core/models/shoes.dart';

class ItemInHome extends StatelessWidget {
  final Shoes shoes;

  const ItemInHome({
    super.key,
    required this.shoes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: context.width,
        height: context.height * .4,
        decoration: BoxDecoration(
          color: const Color(0xffefefef),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                 '₹${shoes.price.toString()}', // Added a dollar sign for price formatting
                  style: TextStyle(fontSize: 16.sp, fontFamily: 'inter'),
                ),
              ),
              // Wrap the image with Expanded widget
              SizedBox(
                height: context.height*.22,
                child: Hero(
                  tag: shoes.id.toString(),
                  child: Image.network(
                    shoes.image.toString(),
                    fit: BoxFit.fill,
                  ),
                ),
                
              ),
              SizedBox(height: 4.h,),
              rowNameShoesAndCart(shoes: shoes,),
            ],
          ),
        ),
      ),
    );
  }
}
