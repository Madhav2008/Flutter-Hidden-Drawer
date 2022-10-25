// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hidden_drawer/Screens/Home_Screen.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _screens = [];

  @override
  void initState() {
    super.initState();

    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HOMESCREEN',
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
      screens: _screens,
      initPositionSelected: 0,
      backgroundColorAppBar: Colors.deepPurple,
    );
  }
}
