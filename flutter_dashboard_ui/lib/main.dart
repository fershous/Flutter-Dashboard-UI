import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/main/main_view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.black),
          canvasColor: secondaryColor,
      ),
      home: MainView()
    );
  }
}