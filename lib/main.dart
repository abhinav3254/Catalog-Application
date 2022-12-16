import 'package:flutter/material.dart';

import 'package:flutter_application_2/screens/HomePage.dart';
import 'package:flutter_application_2/screens/LogInPage.dart';
import 'package:flutter_application_2/utils/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(), // removing this make this defualt route using routes
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => LogInPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.logInRoute: (context) => LogInPage()
      },
    );
  }
}
