import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Portfolio-WebSite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey,
          background: const Color(0xff707373)
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}




