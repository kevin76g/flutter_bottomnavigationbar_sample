import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_sample/screen/business_screen.dart';
import 'package:flutter_bottomnavigationbar_sample/screen/school_screen.dart';

import '../main.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;

  const MyBottomNavigationBar({required this.selectedIndex, Key? key})
      : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case (0):
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MyStatefulWidget()),
              (_) => false);
          break;
        case (1):
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const BusinessScreen()),
              (_) => false);
          break;
        case (2):
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const SchoolScreen()),
              (_) => false);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
