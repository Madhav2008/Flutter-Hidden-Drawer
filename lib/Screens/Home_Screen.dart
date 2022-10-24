import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
