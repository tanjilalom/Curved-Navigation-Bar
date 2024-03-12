import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      body: Center(
        child: Text("Page 3", style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
