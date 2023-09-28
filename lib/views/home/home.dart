import 'package:emerald_newproject/views/home/pages/cards.dart';
import 'package:emerald_newproject/views/home/pages/dash.dart';
import 'package:emerald_newproject/views/home/pages/history.dart';
import 'package:emerald_newproject/views/profile/profile.dart';
import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [
    const DashboardPage(),
    const CardsPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(
              fontSize: 12.8,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400),
          selectedLabelStyle: const TextStyle(
              fontSize: 12.8,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400),
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.orange,
          unselectedItemColor: AppColors.whitish,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/board2.png',
                color: AppColors.orange,
                width: 34,
                height: 34,
              ),
              icon: Image(
                color: AppColors.whitish,
                height: 32,
                width: 32,
                image: const AssetImage(
                  'assets/images/board1.png',
                ),
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/pcard2.png',
                  color: AppColors.orange,
                  width: 32,
                  height: 32,
                ),
                icon: Image(
                  color: AppColors.whitish,
                  height: 32,
                  width: 32,
                  image: const AssetImage(
                    'assets/images/cards.png',
                  ),
                ),
                label: 'Cards'),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/history.png',
                  color: AppColors.orange,
                  width: 32,
                  height: 32,
                ),
                icon: Image(
                  color: AppColors.whitish,
                  height: 32,
                  width: 32,
                  image: const AssetImage(
                    'assets/images/sim.png',
                  ),
                ),
                label: 'History'),
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/profile2.png',
                  color: AppColors.orange,
                  width: 32,
                  height: 32,
                ),
                icon: Image(
                  color: AppColors.whitish,
                  height: 32,
                  width: 32,
                  image: const AssetImage(
                    'assets/images/person1.png',
                  ),
                ),
                label: 'Profile'),
          ],
        ),
        body: pages[_selectedIndex]);
  }
}
