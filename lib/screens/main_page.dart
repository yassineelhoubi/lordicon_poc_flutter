import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'test_page.dart';
import 'package:lordicon_poc/widgets/custom_button.dart';
import 'package:lordicon_poc/widgets/dark_mode_switch.dart';
import 'package:provider/provider.dart';
import '../dark_mode_provider.dart';
import 'package:lordicon_poc/widgets/Text_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(context);
    final theme =
        darkModeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light();
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: darkModeProvider.isDarkMode
              ? Color(0xff00060a)
              : Colors.white, // Navigation bar
          statusBarBrightness:
              darkModeProvider.isDarkMode ? Brightness.light : Brightness.dark,
          statusBarIconBrightness:
              darkModeProvider.isDarkMode ? Brightness.light : Brightness.dark,
        ),
        title: Text("Main Page"),
        // backgroundColor: Colors.green,
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
                child: const Center(
                  child: TextWidget(
                    text: 'Welcome to the Main Page!',
                    fontSize: 20,
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
