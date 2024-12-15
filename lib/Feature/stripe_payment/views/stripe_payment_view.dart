import 'package:flutter/material.dart';
import 'package:shoes/Feature/stripe_payment/views/widgets/stripe_payment_view_body.dart';

class StripePaymentView extends StatelessWidget {
  const StripePaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body:  StripePaymentViewBody());
  }
}