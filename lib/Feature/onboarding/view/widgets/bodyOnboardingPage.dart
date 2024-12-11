import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/onboarding/view/widgets/containerGoHome.dart';
import 'package:shoes/core/constants/funcation.dart';
import 'package:shoes/main.dart';

class Bodyonboardingpage extends StatelessWidget {
  const Bodyonboardingpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Image.asset('assets/images/nike(1) 1.png'),
             const SizedBox(
            height: 20,
          ),
          Container(
              width: getMediaQuery(context).width * .7,
              height: getMediaQuery(context).height * .4,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFFEFEFEF),
                  borderRadius: BorderRadius.circular(30)),
              child: Image.asset('assets/images/logo_in_splas_screen.png')),
           
          Text(
            'Let’s \nDo It.',
            style: TextStyle(
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'inter'),
                
          ),   const SizedBox(
            height: 20,
          ),
        const  Containergohome()
        ],
      ),
    );
  }
}

