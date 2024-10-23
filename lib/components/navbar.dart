
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int selectedItem;
  const BottomNav({super.key, required this.selectedItem});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _currentIndex = 0;

  void changeSelectedNavBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/pesen');
    }
    else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/history');
    }
    else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, color: Color.fromRGBO(157, 174, 192, 1),),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Color.fromRGBO(157, 174, 192, 1),),
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history, color: Color.fromRGBO(157, 174, 192, 1),),
          label: 'History'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined, color: Color.fromRGBO(157, 174, 192, 1),),
          label: 'Profile'
        ),
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black26,
      currentIndex: widget.selectedItem,
      onTap: changeSelectedNavBar,
    );
  }
}