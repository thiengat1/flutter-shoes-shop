import 'package:flutter/material.dart';
import 'package:flutter_shop_shoes/pages/HomePage.dart';
import 'package:flutter_shop_shoes/pages/ItemPage.dart';
import 'package:flutter_shop_shoes/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFCEDDEE),
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      routes: {
        '/': (context) => const LoginPage(),
        'homePage': (context) => const HomePage(),
        'itemPage': (context) => const ItemPage(),
      },
    );
  }
}
