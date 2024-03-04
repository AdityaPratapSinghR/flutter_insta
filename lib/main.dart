import 'package:flutter/material.dart';
import 'package:flutter_insta/screens/homePage.dart';
import 'package:flutter_insta/screens/loginPage.dart';
import 'package:flutter_insta/screens/signUpPage.dart';
import 'package:flutter_insta/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => loginPage(),
        MyRoutes.homePageRoute:(context) => homePage(),
        MyRoutes.signUpPageRoute:(context)=>signUpPage(),
      },

    );
  }
}
