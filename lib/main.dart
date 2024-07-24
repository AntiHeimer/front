import 'package:anti_heimer/Account/page/account_page.dart';
import 'package:anti_heimer/Home/page/home_page.dart';
import 'package:anti_heimer/Location/page/location_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: 'assets/config/.env');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 1;
  final List<Widget> _pages = [
    LocationPage(),
    HomePage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AntiHeimer',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        colorScheme: const ColorScheme.light(
            primary: Colors.white60, secondary: Colors.black),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
          selectedItemColor: Colors.black,
          selectedFontSize: 10,
          unselectedItemColor: const Color.fromRGBO(113, 113, 113, 1),
          unselectedFontSize: 10,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,
                  size: 35,
                ),
                label: 'Location'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 35,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                ),
                label: 'Account'),
          ],
        ),
      ),
    );
  }
}
