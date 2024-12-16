// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/contactus/view/widgets/iconContactUs.dart';
import 'package:shoes/core/url_launcher/url_launcher.dart';

class BodyContactUs extends StatelessWidget {
  const BodyContactUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 40.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center
    
        children: [
          Container(
            width: double.infinity,
            height: 1.4,
            color: Colors.black,
          ),
          IconContactUs(
            onPressed: () async {
              await UrlLauncher().openWhatsApp();
            },
            text: '+1012 3456 789',
            icon: Icon(
              Icons.phone,
              size: 37.sp,
              color: Colors.green,
            ),
          ),
          IconContactUs(
           onPressed: () async {
              await UrlLauncher().openGmail();
            },
            text: 'nike@gmail.com',
            icon: Icon(
              Icons.email,
              size: 37.sp,
              color: Colors.deepOrange,
            ),
          ),
          IconContactUs(
            onPressed: () async {
              UrlLauncher().facebookPageId;
            },
            text: 'Nike',
            icon: Icon(
              Icons.facebook_outlined,
              size: 37.sp,
              color: Colors.blue,
            ),
          ),
          IconContactUs(
            onPressed: () {},
            text:
                '      132 Dartmouth Street Boston,\n Massachusetts 02156 United States',
            icon: Icon(
              Icons.location_on,
              size: 37.sp,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
