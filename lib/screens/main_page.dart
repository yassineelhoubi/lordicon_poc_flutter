import 'package:flutter/material.dart';
import 'test_page.dart';
import '../widgets/custom_button.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
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
