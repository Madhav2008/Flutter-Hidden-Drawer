// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hidden_drawer/Screens/Home_Screen.dart';
import 'package:hidden_drawer/Screens/Settings_Screen.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _screens = [];

  final defaultTextStyle = const TextStyle(
    fontSize: 18,
    color: Colors.white,
    letterSpacing: 5,
  );

  @override
  void initState() {
    super.initState();

    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HOME',
          baseStyle: defaultTextStyle,
          selectedStyle: defaultTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'SETTINGS',
          baseStyle: defaultTextStyle,
          selectedStyle: defaultTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        const SettingsScreen(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade300,
      backgroundColorAppBar: Colors.deepPurple,
      screens: _screens,
      isTitleCentered: true,
      initPositionSelected: 0,
      slidePercent: 60,styleAutoTittleName:TextStyle()
    );
  }
}
