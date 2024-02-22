import 'package:flutter/material.dart';
import 'package:lordicon_poc/widgets/Text_widget.dart';
import '../widgets/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lordicon/lordicon.dart';
import 'package:provider/provider.dart';
import '../dark_mode_provider.dart';
import 'package:flutter/services.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeProvider>(context);
    final theme =
        darkModeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light();
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Second Page'),
      // ),
      body: Container(
        padding: EdgeInsets.only(bottom: 10, top: 5, left: 5, right: 5),
        // color: Theme.of(context).colorScheme.background,
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
                    child: Column(
                      // mainAxisAlignment: ,
                      // crossAxisAlignment: ,
                      children: [
                        Center(child: MyCustomContainer()),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              TextWidget(
                                text: 'Oups !!',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              TextWidget(
                                text: 'Une petite panne',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              TextWidget(
                                text:
                                    'Nous rencontrons actuellement un problème technique. Veuillez réessayer ultérieurement.',
                                color: Theme.of(context).colorScheme.secondary,
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
    final darkModeProvider = Provider.of<DarkModeProvider>(context);

    var controller =
        IconController.assets('assets/wired-outline-1140-error.json');

    controller.addStatusListener((status) {
      if (status == ControllerStatus.ready) {
        controller.playFromBeginning();
      }
    });
    return Container(
      width: double.infinity,
      height: 300,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              darkModeProvider.isDarkMode
                  ? 'assets/background_dark_mode.svg'
                  : 'assets/background_light_mode.svg',
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 20),
              child: IconViewer(
                controller: controller,
                // colorize: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
