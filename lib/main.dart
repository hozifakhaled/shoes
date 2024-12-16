import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:shoes/Feature/onboarding/views/onboardingPage.dart';
import 'package:shoes/core/routing/app_routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(); // تحميل البيئة من ملف .env
  if (dotenv.env.containsKey('PUBLISHER_KEY')) {
    debugPrint("Environment loaded successfully!");
  } else {
    debugPrint("Failed to load environment.");
  }
  Stripe.publishableKey = dotenv.env['PUBLISHER_KEY'] ?? 'default_key'; // تعيين مفتاح النشر من البيئة
  runApp(ShosesApp(appRouting: AppRouting()));
}

class ShosesApp extends StatelessWidget {
  const ShosesApp({super.key, required this.appRouting});
  final AppRouting appRouting;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: Onboardingpage(),
          onGenerateRoute: appRouting.generateRoute,
        );
      },
    );
  }
}
