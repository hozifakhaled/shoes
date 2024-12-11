import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/home/views/home_view.dart';
import 'package:shoes/Feature/onboarding/view/onboardingPage.dart';

void main() {
  runApp(const ShosesApp());
}

class ShosesApp extends StatelessWidget {
  const ShosesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home:HomeView(),
          );
        });
  }
}

