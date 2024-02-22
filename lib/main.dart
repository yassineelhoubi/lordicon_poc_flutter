import 'package:flutter/material.dart';
import 'screens/main_page.dart';
import 'package:provider/provider.dart';
import 'dark_mode_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DarkModeProvider(),
      child: Consumer<DarkModeProvider>(
        builder: (context, darkModeProvider, child) {
          ThemeData theme = darkModeProvider.isDarkMode
              ? ThemeData.dark().copyWith(
                  // Customize dark mode colors here
                  scaffoldBackgroundColor: const Color(0xff00060a),
                  colorScheme: const ColorScheme(
                    brightness: Brightness.dark,
                    primary: Color(0xff3dadff),
                    onPrimary: Colors.white,
                    secondary: Color(0xff788691),
                    onSecondary: Colors.white,
                    background: Color(0xff00060a),
                    onBackground: Colors.white,
                    surface: Color(0xff00060a),
                    onSurface: Colors.white,
                    error: Colors.red,
                    onError: Colors.white,
                  ),
                )
              : ThemeData.light().copyWith(
                  scaffoldBackgroundColor: const Color(0xffffffff),
                );

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: MainPage(),
          );
        },
      ),
    );
  }
}
