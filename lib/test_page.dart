import 'package:flutter/material.dart';
import 'custom_button.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Second Page'),
      // ),
      body: Container(
        padding: EdgeInsets.only(bottom: 10, top: 5, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 50, top: 50, left: 10, right: 10),
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Center(child: MyCustomContainer()),
                        Text(
                          'Welcome to the Main Page!',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Welcome to the Main Page!',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            CustomButton(
              text: 'Retour accueil',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        // Set background image
        image: DecorationImage(
          image: AssetImage('assets/Panne.png'), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        // Icon in the middle of the container
        child: Icon(
          Icons.star,
          size: 50.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
