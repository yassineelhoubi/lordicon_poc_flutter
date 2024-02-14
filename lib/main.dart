// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lordicon/lordicon.dart';
import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = IconController.assets('assets/icon-test.json');

//     controller.addStatusListener((status) {
//       if (status == ControllerStatus.ready) {
//         controller.playFromBeginning();
//       }
//     });

//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: IconViewer(
//             controller: controller,
//             width: 200,
//             height: 200,
//           ),
//         ),
//       ),
//     );
//   }
// }
