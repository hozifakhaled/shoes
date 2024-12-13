
import 'package:flutter/material.dart';

class AppbarInDetails extends StatelessWidget {
  const AppbarInDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_rounded)),
        const Icon(Icons.more_vert),
      ],
    );
  }
}