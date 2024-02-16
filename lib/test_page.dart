import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                // color: Colors.blue,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 50, top: 50, left: 10, right: 10),
                    // padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Center(child: MyCustomContainer()),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                'Oups !!',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Une petite panne',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Nous rencontrons actuellement un problème technique. Veuillez réessayer ultérieurement.',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
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
      width: double.infinity,
      height: 300,
      child: Center(
        child: SvgPicture.asset(
          'assets/Panne.svg',
        ),
      ),
    );
  }
}
