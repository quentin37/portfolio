import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/composant/header.dart';
import '../composant/activity_section.dart';

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

        @override
        State<MyHomePage> createState() => MyHomePageState();
  }

  class MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      Color title = const Color(0xffffc029).withOpacity(0.9);
      return Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color(0xff707373),
          title: Text('Portfolio',style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                const Header(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ActivitySection(titleColor: title,),
                ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      '© 2024 Quentin Billac. Tous droits réservés.',
                      style: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    )),
                ],
          ),
        ),
      );
    }
  }
