import 'package:exspy/screens/Home.dart';
import 'package:exspy/screens/profile.dart';
import 'package:exspy/screens/scan.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const double sizeboxheight = 25;

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  PageController _pageController = PageController();
  List<Widget> _screens = [homepage(),scan(),profile()];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemtapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
    Color(0xfffbb448);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF1F0E32),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Color(0xFFE5E5E5),
          currentIndex: _selectedIndex,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            // fontFamily: Fontfamily,
            letterSpacing: 1,
          ),
          onTap: _onItemtapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1F0E32),
              icon: Icon(
                FontAwesomeIcons.circle,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.barcode,
              ),
              label: "",
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
