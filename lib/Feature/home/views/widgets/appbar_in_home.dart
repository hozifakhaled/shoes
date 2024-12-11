import 'package:flutter/material.dart';

class AppbarInHome extends StatelessWidget {
  const AppbarInHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/nike(1) 1.png'),
        const Icon(Icons.more_vert)
      ],
    );
  }
}