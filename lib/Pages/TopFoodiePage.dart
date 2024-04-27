import 'package:flutter/material.dart';

class TopFoodie extends StatelessWidget {
  const TopFoodie({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text(
            "Ini halaman Top Foodie",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.yellowAccent
            ),
          ),
        )
      ),
    );
  }
}