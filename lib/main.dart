import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/home/views/home_view.dart';
import 'package:shoes/Feature/onboarding/views/onboardingPage.dart';

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
            home:Onboardingpage(),
=======
            onGenerateRoute: appRouting.generateRoute,
>>>>>>> 07e4394ba6260bf4a6dac583b452609fd05e839c
          );
        });
  }
}

