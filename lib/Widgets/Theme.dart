import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyTheme{
  // For the light Theam
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.indigo,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black,),
        iconTheme: IconThemeData(color: Colors.black),
      )
  );


  // For the Dark them
  static ThemeData get darkThem => ThemeData(
    brightness: Brightness.dark
  );
}