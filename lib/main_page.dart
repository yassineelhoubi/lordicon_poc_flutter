import 'package:flutter/material.dart';
import 'test_page.dart';
import 'custom_button.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the Main Page!',
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(bottom: 10, top: 0, left: 5, right: 5),
            child: CustomButton(
              text: 'Go to Test',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
