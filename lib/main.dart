import 'package:flutter/material.dart';
import 'package:hidden_drawer/Screens/Home_Screen.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hidden Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HiddenDrawerMenu(),
    );
  }
}
