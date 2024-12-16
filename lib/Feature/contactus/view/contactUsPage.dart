// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shoes/Feature/contactus/view/widgets/BodyContactUs.dart';


class Contactuspage extends StatelessWidget {
  const Contactuspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/nike(1) 1.png'),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false),
      body:const BodyContactUs(),
    );
  }
}

