import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../view/home/view/screen/home.dart';
import '../view/movies/view/screen/movies.dart';

import '../core/constans/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  List<Widget> screen = const [HomeScreen(), HomeScreen(), HomeScreen(), Movies(), HomeScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      resizeToAvoidBottomInset: false,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset('assets/icons/movie.svg'),
        backgroundColor: AppColors.kPrimaryColor,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.kBackgroundColor.withOpacity(0.1),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: AppColors.kPrimaryColor,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/calendar.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/calendar.svg',
              color: AppColors.kPrimaryColor,
            ),
            label: 'schedule',
          ),
          // hide middle button XD
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/calendar.svg', color: Colors.transparent),
            label: 'transparent',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/compass.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/compass.svg',
              color: AppColors.kPrimaryColor,
            ),
            label: 'discover',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile_circle.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/profile_circle.svg',
              color: AppColors.kPrimaryColor,
            ),
            label: 'profile',
          ),
        ],
        selectedItemColor: AppColors.kPrimaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: false,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
