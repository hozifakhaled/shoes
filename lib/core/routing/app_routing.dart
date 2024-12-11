import 'package:flutter/material.dart';
import 'package:shoes/Feature/onboarding/views/onboardingPage.dart';
import 'package:shoes/core/routing/routes.dart';
import 'package:shoes/core/widgets/bottom_nav.dart';

class AppRouting {
  
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoarding:
        return MaterialPageRoute(
          builder:
              (_) => const Onboardingpage(),
        );
        case bottomnav:
        return MaterialPageRoute(
          builder:
              (_) => const BottomNav(),
        );
      default:
    }
    return null;
  }
}
