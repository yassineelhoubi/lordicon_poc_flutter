import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../dark_mode_provider.dart';

class DarkModeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(context);

    return Switch(
      value: darkModeProvider.isDarkMode,
      onChanged: (value) {
        darkModeProvider.toggleDarkMode();
      },
    );
  }
}
