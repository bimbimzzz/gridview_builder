import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List pages = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: const Color.fromARGB(255, 39, 37, 30),
    ),
    Container(
      color: const Color.fromARGB(255, 123, 122, 119),
    ),
    Container(
      color: const Color.fromARGB(255, 45, 35, 7),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        iconSize: 25,
        selectedFontSize: 13,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        backgroundColor: const Color.fromARGB(255, 196, 203, 206),
        selectedItemColor: const Color.fromARGB(255, 122, 192, 51),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
