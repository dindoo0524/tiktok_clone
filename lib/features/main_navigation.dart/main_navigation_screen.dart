import 'package:flutter/cupertino.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text('home'),
    ),
    const Center(
      child: Text('search'),
    ),
    const Center(
      child: Text('home'),
    ),
    const Center(
      child: Text('search'),
    ),
    const Center(
      child: Text('search'),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.home,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.search,
          ),
          label: 'search',
        ),
      ]),
      tabBuilder: (context, index) => screens[index],
    );
  }
}
