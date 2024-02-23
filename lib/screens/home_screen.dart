import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/pages.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    FriendsPage(),
    DatesPage(),
    NotificationsPage(),
    MenusPage(),
  ];

  void _onNavigationItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: _NavigationBar(
        onItemSelected: _onNavigationItemSelected,
        currentIndex: _currentIndex,
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    Key? key,
    required this.onItemSelected,
    required this.currentIndex,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavigationBarItem(
              index: 0,
              icon: CupertinoIcons.home,
              label: 'Trang chủ',
              isSelected: currentIndex == 0,
              onTap: onItemSelected,
            ),
            _NavigationBarItem(
              index: 1,
              icon: CupertinoIcons.person_2,
              label: 'Bạn bè',
              isSelected: currentIndex == 1,
              onTap: onItemSelected,
            ),
            _NavigationBarItem(
              index: 2,
              icon: CupertinoIcons.heart,
              label: 'Hẹn hò',
              isSelected: currentIndex == 2,
              onTap: onItemSelected,
            ),
            _NavigationBarItem(
              index: 3,
              icon: CupertinoIcons.bell,
              label: 'Thông báo',
              isSelected: currentIndex == 3,
              onTap: onItemSelected,
            ),
            _NavigationBarItem(
              index: 4,
              icon: Icons.menu,
              label: 'Menu',
              isSelected: currentIndex == 4,
              onTap: onItemSelected,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    required this.label,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final String label;
  final IconData icon;
  final bool isSelected;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 70,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 28,
                color: isSelected ? Colors.blue : null,
              ),
              const SizedBox(height: 5),
              Text(
                label,
                style: isSelected
                    ? const TextStyle(
                  fontSize: 11,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )
                    : const TextStyle(fontSize: 11,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
