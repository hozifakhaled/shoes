import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/home/views/widgets/appbar_in_details.dart';
import 'package:shoes/Feature/home/views/widgets/desc_in_details.dart';
import 'package:shoes/Feature/home/views/widgets/lastpart_in_details.dart';
import 'package:shoes/Feature/home/views/widgets/rate_in_details.dart';
import 'package:shoes/core/models/shoes.dart';
import 'package:shoes/core/styles/text_styles.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.shoes});
 final Shoes shoes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 30.w), // Responsive padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h), // Responsive height
                const AppbarInDetails(),
                Align(
                  alignment: Alignment.center,
                  child: Image.network(
                   shoes.image.toString(),
                    width: 240.w, // Responsive width
                    height: 240.h, // Responsive height
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20.h), // Responsive height
                Text('Men’s Shoes', style: Styles.menshoses()),
                Text(shoes.name.toString(), style: Styles.titleindetails()),
                SizedBox(height: 20.h), // Responsive height
                 RateInDetails(rate:shoes.rating.toString() ,),
                SizedBox(height: 15.h), // Responsive height
                 DescInDetails(text: shoes.description.toString(),),
                SizedBox(height: 60.h), // Responsive height
                 LastPartInDetails(price: shoes.price.toString(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
