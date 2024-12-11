import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/home/views/widgets/appbar_in_home.dart';
import 'package:shoes/Feature/home/views/widgets/listViewBuliderItem.dart';
import 'package:shoes/Feature/home/views/widgets/textfield_in_home.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 43.h,horizontal: 20.w),
        child: Column(
          children: [
            const AppbarInHome(),
            SizedBox(height: 30.h,),
            const TextfieldInHome(),
            SizedBox(height: 20.h,),
            const ListViewBuliderItem(),
          ],
        ),
      ),
    );
  }
}

