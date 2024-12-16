// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes/Feature/cart/view/cartPage.dart';
import 'package:shoes/Feature/contactus/view/contactUsPage.dart';
import 'package:shoes/Feature/home/views/home_view.dart';
import 'package:shoes/Feature/stripe_payment/views/stripe_payment_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
   const Cartpage(),
    const StripePaymentView(),
   const Contactuspage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],  
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex, 
          onTap: (index) {
            setState(() {
              _currentIndex = index; 
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '', 
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: '', 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: '',    
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_cal_outlined),
              label: '', 
            ),
          ],
        ),
      ),
    );
  }
}
