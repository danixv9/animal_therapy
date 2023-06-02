import 'package:flutter/material.dart';
import 'emotion_screen.dart'; 
import 'search_screen.dart';  
import 'favorites_screen.dart';
import 'user_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, key});
}

class _HomeScreenState extends State<HomeScreen> {  
  int _selectedIndex = 0;

  final List<Widget> _screens = [    
    const EmotionScreen(),  
    const SearchScreen(),   
    const FavoritesScreen(),
    const UserProfileScreen(), 
  ];

  void _onItemTapped(int index) { 
    setState(() {
      _selectedIndex = index; 
    });
  } 

  @override  
  Widget build(BuildContext context) {    
    return Scaffold(
       body: _screens[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(...),
    );   
  }
}


