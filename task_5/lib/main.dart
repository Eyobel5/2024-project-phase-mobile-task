import 'package:flutter/material.dart';
import 'Splash_Screen.dart';

import 'Details_Page.dart';
import 'Home_Page.dart'; // Import the HomePage class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/details': (context) => DetailsPage(), // NEW ROUTE
      },
    );
  }
}
