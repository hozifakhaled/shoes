import 'package:flutter/material.dart';
import 'package:shoes/Feature/home/views/details_view.dart';
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
        case details:
        return MaterialPageRoute(
          builder:
              (_) => const DetailsView(),
        );
      default:
    }
    return null;
  }
}
