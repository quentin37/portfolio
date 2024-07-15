import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

        @override
        State<MyHomePage> createState() => MyHomePageState();
  }

  class MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      Color title = const Color(0xffffc029).withOpacity(0.9);
      return Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color(0xff707373),
          title: Text('Portfolio',style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                  height: 400,
                  color: const Color(0xffffc029).withOpacity(0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width : 450,
                        child :
                        Padding(
                          padding: const EdgeInsets.only(top : 45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedTextKit(
                                totalRepeatCount : 1,
                                repeatForever: false,
                                animatedTexts: [
                                  WavyAnimatedText('Quentin billac',speed: const Duration(milliseconds: 125),textStyle: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 45,color:Colors.white)),
                                ],
                              ),
                              AnimatedTextKit(
                                totalRepeatCount : 1,
                                repeatForever: false,
                                animatedTexts: [
                                  TyperAnimatedText('Web & Mobile Application Designer',
                                      textStyle:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 45,color:Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 100),
                      const SizedBox(
                        width: 450,
                          child: Image(image: NetworkImage("https://quebillc.freeboxos.fr/img/profil.png")))
                    ],
                   ),
                  ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20,bottom: 20),
                      child: Text('Passion',style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 45,color: title)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 300,height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.print_rounded,color: title,size: 45,),
                            const SizedBox(height: 5),
                            Text('L\'impression 3D',style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white),),
                            const SizedBox(height: 5),
                            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                              style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white),),
                          ],
                        ),),
                        SizedBox(width: 300,height: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.computer_outlined,color: title,size: 45,),
                              const SizedBox(height: 5),
                              Text('Conception  3D',style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white),),
                              const SizedBox(height: 5),
                              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                                style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white),),
                            ],
                          ),),
                        SizedBox(width: 300,height: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.videogame_asset_outlined,color: title,size: 45,),
                              const SizedBox(height: 5),
                              Text('Jeux vidéo',style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white),),
                              const SizedBox(height: 5),
                              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                                style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white),),
                            ],
                          ),),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 300,height: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.sports_tennis_outlined,color: title,size: 45,),
                              const SizedBox(height: 5),
                              Text('Le Tennis',style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white),),
                              const SizedBox(height: 5),
                              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                                style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white),),
                            ],
                          ),),
                        SizedBox(width: 300,height: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.directions_bike_outlined,color: title,size: 45,),
                              const SizedBox(height: 5),
                              Text('Le vélo',style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white),),
                              const SizedBox(height: 5),
                              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                                style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white),),
                            ],
                          ),),
                        SizedBox(width: 300,height: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.queue_music_outlined,color: title,size: 45,),
                              const SizedBox(height: 5),
                              Text('La musique',style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.white),),
                              const SizedBox(height: 5),
                              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                                style:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w300,fontSize: 16,color: Colors.white),),
                            ],
                          ),),
                      ],
                    )
                  ],
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
