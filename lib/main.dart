import 'package:flutter/material.dart';
import 'package:flutter_catalog/util/rout.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: true,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
        brightness: Brightness.light
      ),

      routes: {
        "/": (context) => Loginpage(),
        MyRouter.homeRoute:(context) => HomePage(),
        MyRouter.loginRoute: (context) => Loginpage()
      },
    );
  }
}