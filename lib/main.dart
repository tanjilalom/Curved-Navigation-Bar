import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigationbar/page1.dart';
import 'package:curved_navigationbar/page2.dart';
import 'package:curved_navigationbar/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavBar> {
  var _page = 0;
  final pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_page],
        backgroundColor: Colors.lightBlueAccent[100],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            items: [
              Icon(Icons.home),
              Icon(Icons.favorite),
              Icon(Icons.add),
            ]),
      ),
    );
  }
}
