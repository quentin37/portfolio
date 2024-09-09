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
      title: 'Portfolio',
      theme: ThemeData(
        appBarTheme:  const AppBarTheme(
            color:Color(0xff707373),
            foregroundColor:Color(0xffffffff),
            shadowColor:Color(0xff707373),
            surfaceTintColor:Color(0xff707373)
        ),
        focusColor: const Color(0xffffc029).withOpacity(0.9),
        scaffoldBackgroundColor: const Color(0xff707373),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}




