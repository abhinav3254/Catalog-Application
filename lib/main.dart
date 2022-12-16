import 'package:flutter/material.dart';

import 'package:flutter_application_2/screens/HomePage.dart';
import 'package:flutter_application_2/screens/LogInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(), // removing this make this defualt route using routes
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => LogInPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LogInPage()
      },
    );
  }
}
