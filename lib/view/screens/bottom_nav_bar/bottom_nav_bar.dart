import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/chat_list_screen/chat_list_screen.dart';
import 'package:chat_app/view/screens/home_screen/home_screen.dart';
import 'package:chat_app/view/screens/menu_screen/menu_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ChatListScrreen(),
    const MenuScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: kblack,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline_outlined,
              color: kblack,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: kblack,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        unselectedFontSize: 14.0,
        elevation: 8.0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 40.0,
      ),
    );
  }
}
