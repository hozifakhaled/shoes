import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/onboarding/views/onboardingPage.dart';
import 'package:shoes/core/routing/app_routing.dart';


void main() {
  runApp(ShosesApp(appRouting: AppRouting(),));
}

class ShosesApp extends StatelessWidget {
  const ShosesApp({super.key, required this.appRouting});
  final AppRouting appRouting;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home:Onboardingpage(),

            onGenerateRoute: appRouting.generateRoute,

          );
        });
  }
}

