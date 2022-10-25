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
  List<ScreenHiddenDrawer> _screens = [];final myTextStyle

  @override
  void initState() {
    super.initState();

    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HOMESCREEN',
          baseStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
          selectedStyle: const TextStyle(
            letterSpacing: 2,
          ),
        ),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'SETTINGS',
          baseStyle: const TextStyle(
            letterSpacing: 2,
          ),
          selectedStyle: const TextStyle(
            letterSpacing: 2,
          ),
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
    );
  }
}
