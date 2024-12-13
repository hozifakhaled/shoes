import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/home/views/widgets/appbar_in_details.dart';
import 'package:shoes/Feature/home/views/widgets/desc_in_details.dart';
import 'package:shoes/Feature/home/views/widgets/lastpart_in_details.dart';
import 'package:shoes/Feature/home/views/widgets/rate_in_details.dart';
import 'package:shoes/core/styles/text_styles.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppbarInDetails(),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/logo_in_splas_screen.png',
                      width: 240.w,
                      height: 240.h,
                      fit: BoxFit.cover,
                    )),
                SizedBox(height: 20.h,),
                Text('Men’s Shoes', style: Styles.menshoses()),
                Text('Nike Air 321', style: Styles.titleindetails()),
                SizedBox(height: 20.h,),
                const RateInDetails(),
                SizedBox(height: 15.h,),
                const DescInDetails(),
                SizedBox(height: 20.h,),
                const LastPartInDetails()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
