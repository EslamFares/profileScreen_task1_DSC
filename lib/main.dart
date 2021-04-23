import 'package:flutter/material.dart';
import 'package:profile_screen_task1/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ProfileScreen(),
    );
  }
}
