import 'package:flutter/material.dart';
import 'package:instagramapp/screens/contact_screen.dart';
import 'package:instagramapp/screens/home_screen.dart';
import 'package:instagramapp/widgets/app_bottom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(body: Center(child: Text('Reels'))),
    const ContactScreen(),
    const Scaffold(body: Center(child: Text('Search'))),
    const Scaffold(body: Center(child: Text('Profile'))),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: AppBottomNav(
        currentIndex: _currentIndex,
        onTap: _onNavTapped,
      ),
    );
  }
}
