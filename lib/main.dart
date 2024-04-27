import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uts_kevinsadino/Pages/BookMarkPage.dart';
import 'package:uts_kevinsadino/Pages/DiscoveryPage.dart';
import 'package:uts_kevinsadino/Pages/HomePage.dart';
import 'package:uts_kevinsadino/Pages/ProfilePage.dart';
import 'package:uts_kevinsadino/Pages/TopFoodiePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexNow = 0;

  final pages = [
      HomePage(), Discovery(), BookMark(), TopFoodie(), Profile()
    ];
  
  @override
  Widget build(BuildContext context) {
    const homeIcon = Icon(Icons.home_outlined, size: 32.0);
    const discoveryIcon = Icon(Icons.location_on_outlined, size: 32.0);
    const bookmarkIcon = Icon(Icons.bookmark_outline, size: 32.0);
    const topFoodieIcon = Icon(Icons.emoji_events_outlined, size: 32.0);
    const profileIcon = Icon(Icons.person_outline, size: 32.0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'My App',
        home: Scaffold(
          appBar: AppBar(
          title: const Text(
            'Japan CBD',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              semanticLabel: 'Back',
              color: Colors.amberAccent[400],               
            ),
            iconSize: 30.0,
            // ignore: avoid_print
            onPressed: () => print('Menu button'),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: pages[indexNow],
        bottomNavigationBar: 
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: indexNow,
          onTap: (index) {
            setState(() {
              indexNow = index;
            });
          },
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
        )
      )
    );
  }
}


