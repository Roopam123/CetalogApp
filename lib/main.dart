import 'package:flutter/material.dart';
import 'package:myapp/Page/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page/home.dart';



void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: '/login',
      routes: {
        '/':(context)=>Home(),
        '/home':(context)=>Home(),
        '/login':(context)=>Login()
      },
    );
  }
}
