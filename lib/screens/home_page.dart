import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/composant/header.dart';
import 'package:portfolio/screens/parcours.dart';
import '../composant/activity_section.dart';
import '../composant/responsive.dart';

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

        @override
        State<MyHomePage> createState() => MyHomePageState();
  }

  class MyHomePageState extends State<MyHomePage> {
    bool isHovering1 = false;
    bool isHovering2 = false;

    @override
    Widget build(BuildContext context) {
      Color title = const Color(0xffffc029).withOpacity(0.9);
      return Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width:38, child: Image.asset('assets/images/logohead.png')),
              Text('Portfolio',style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white,)),
            ],
          ),
          actions: [
            if (!Responsive.isMobile(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onHover: (isHovered) {isHovering1 = isHovered; setState(() {});},
                  onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) {return const MyHomePage(); },), (Route<dynamic> route) => false,);}, child: Text('Accueil',style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color:isHovering1 ? Colors.amber :  Colors.white)),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 23, color: Colors.white,width: 2,),
                ),
                TextButton(
                  onHover: (isHovered) {isHovering2 = isHovered;setState(() {});},
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {return const MyPath();}));},
                  child: Text('Mon parcours',style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: isHovering2 ? Colors.amber : Colors.white,)),),
              ],
            )
            //TextButton(onPressed: () {}, child: Text('data'),),
          ],
        ),
        drawer: Responsive.isMobile(context)
            ? Drawer(
          backgroundColor: const Color(0xfff0f0f0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(color:Color(0xff707373)),
                child:Image.asset("assets/images/logohead.png"),
              ),
              ListTile(
                title: const Text('Accueil'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const MyHomePage(); // Replace with your destination page
                      },
                    ),
                        (Route<dynamic> route) => false,
                  );
                },
              ),
              ListTile(
                title: const Text('Mon parcours'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const MyPath(); // Replace with your destination page
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ) : null,
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
