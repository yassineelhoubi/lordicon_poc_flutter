import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First Row - Image and Icon in the Middle
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue, // Replace with your image or image URL
                  child: Center(
                    child: Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Second Row - Text
            Text(
              'This is the Second Page',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Space between Button and Text
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back to Main Page'),
            ),
          ],
        ),
      ),
    );
  }
}
