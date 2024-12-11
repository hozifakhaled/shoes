import 'package:flutter/material.dart';
import 'package:shoes/Feature/home/views/home_view.dart';
import 'package:shoes/Feature/onboarding/view/onboardingPage.dart';
import 'package:shoes/core/routing/routes.dart';

class AppRouting {
  
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoarding:
        return MaterialPageRoute(
          builder:
              (_) => const Onboardingpage(),
        );
        case homeView:
        return MaterialPageRoute(
          builder:
              (_) => const HomeView(),
        );
      default:
    }
    return null;
  }
}
