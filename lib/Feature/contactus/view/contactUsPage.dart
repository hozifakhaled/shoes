import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoes/Feature/contactus/view/widgets/BodyContactUs.dart';
import 'package:shoes/Feature/contactus/view/widgets/iconContactUs.dart';
import 'package:shoes/core/url_launcher/url_launcher.dart';

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

