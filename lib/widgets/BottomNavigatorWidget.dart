import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatefulWidget {
  const BottomNavigatorWidget({super.key});

  @override
  State<BottomNavigatorWidget> createState() => _BottomNavigatorWidgetState();
}

class _BottomNavigatorWidgetState extends State<BottomNavigatorWidget> {
  int indexNow = 0;
  @override
  Widget build(BuildContext context) {
    const homeIcon = Icon(Icons.home_outlined, size: 32.0);
    const discoveryIcon = Icon(Icons.location_on_outlined, size: 32.0);
    const bookmarkIcon = Icon(Icons.bookmark_outline, size: 32.0);
    const topFoodieIcon = Icon(Icons.emoji_events_outlined, size: 32.0);
    const profileIcon = Icon(Icons.person_outline, size: 32.0);

    void _onItemTapped(int index) {
      setState(() {
        indexNow = index;
      });
    }
    return 
        BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: indexNow,
        onTap: _onItemTapped,
        selectedItemColor: Colors.yellowAccent[700],
        items: const [
          BottomNavigationBarItem(
            label: "Home", 
            icon: homeIcon,
          ),
          BottomNavigationBarItem(
            label: "Discovery", 
            icon: discoveryIcon
          ),
          BottomNavigationBarItem(
            label: "Bookmark", 
            icon: bookmarkIcon
          ),
          BottomNavigationBarItem(
            label: "Top Foodie", 
            icon: topFoodieIcon
          ),
          BottomNavigationBarItem(
            label: "Profile", 
            icon: profileIcon
          ),
        ],
    );
  }
}