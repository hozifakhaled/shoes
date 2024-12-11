import 'package:flutter/material.dart';
import 'package:shoes/Feature/home/views/home_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    Center(child: Text('Search Page')),
    Center(child: Text('Cart Page')),
    Center(child: Text('Profile Page')),
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
        child: PreferredSize(
          preferredSize: const Size.fromHeight(40),  // تصغير الارتفاع هنا
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
                icon: Icon(Icons.shopping_bag_outlined),
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
      ),
    );
  }
}
