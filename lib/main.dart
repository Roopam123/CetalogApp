import 'package:flutter/material.dart';
import 'package:myapp/Page/login.dart';
import 'package:myapp/Widgets/Theme.dart';
import 'Page/home.dart';
import 'Routes.dart';



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
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkThem,
      initialRoute: '/login',
      routes: {
        '/':(context)=>Home(),
        MyRoutes.Home:(context)=>Home(),
        MyRoutes.Login:(context)=>Login()
      },
    );
  }
}
