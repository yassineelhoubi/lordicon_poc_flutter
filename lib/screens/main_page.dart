import 'package:flutter/material.dart';
import 'test_page.dart';
import 'package:lordicon_poc/widgets/custom_button.dart';
import 'package:lordicon_poc/widgets/dark_mode_switch.dart';
import 'package:provider/provider.dart';
import '../dark_mode_provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(context);
    final theme =
        darkModeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light();
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
        actions: [
          Builder(
            builder: (context) => DarkModeSwitch(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 10, top: 5, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                // color: Colors.blue,
                child: Center(
                  child: Text(
                    'Welcome to the Main Page!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            CustomButton(
              text: 'Go to Test',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
