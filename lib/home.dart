import 'package:flight_booking_app/pages/buy.dart';
import 'package:flight_booking_app/pages/home.dart';
import 'package:flight_booking_app/pages/profile.dart';

import 'package:flight_booking_app/pages/tickets.dart';
import 'package:flutter/material.dart';

class bottom_bar extends StatelessWidget {
  const bottom_bar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottom_nav(),
    );
  }
}

class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int _selectedIndex = 0;
    static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Buy(),
    const Profile(),
    const Tickets()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontSize: 10, color: Colors.blue),
        unselectedItemColor: const Color(0xFF526480),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            label: 'Ticket',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
