// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text(
          'HOMEPAGE',
          style: TextStyle(
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
