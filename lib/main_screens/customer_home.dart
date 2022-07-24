// Imports
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Screens
import 'package:untitled/main_screens/home.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  _CustomerHomeScreenState createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    const HomeScreen(),
    Center(child: Text('Category Screen')),
    Center(child: Text('Stores Screen')),
    Center(child: Text('Cart Screen')),
    Center(child: Text('Profile Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
         elevation: 0,
         type: BottomNavigationBarType.fixed,
         selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
         selectedItemColor: Colors.black,
         currentIndex: _selectedIndex,
         items:
           const[
             BottomNavigationBarItem(icon: Icon(Icons.home),          label: 'Home'),
             BottomNavigationBarItem(icon: Icon(Icons.search),        label: 'Category'),
             BottomNavigationBarItem(icon: Icon(Icons.shop),          label: 'Stores'),
             BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
             BottomNavigationBarItem(icon: Icon(Icons.person),        label: 'Profile'),
           ],
         onTap: (index) {
           setState((){
              _selectedIndex = index;
           });
         },
       ),
    );
  }
}