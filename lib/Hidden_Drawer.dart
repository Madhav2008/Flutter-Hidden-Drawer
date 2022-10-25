// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ScreenHiddenDrawer> _screens = [];

  @override
  void initState() {
    super.initState();

    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomeScreen',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        const HomeScreen(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple,
      screens: [],
    );
  }
}
