import 'package:flutter/material.dart';
import 'package:lordicon/lordicon.dart';
import 'screens/main_page.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => DarkModeProvider(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
