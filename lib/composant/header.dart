import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/composant/responsive.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  double padding = 0;
  double policeSize =0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    padding = Responsive.isMobile(context) ? 5 :  Responsive.isTablet(context) ? 12.5 : 20;
    policeSize = !Responsive.isDesktop(context) ? 35: 45;
    setState(() { });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: padding,top: padding,right: padding),
      height: Responsive.isMobile(context) ? 533: Responsive.isTablet(context) ? 370 : 500,
      color: const Color(0xffffc029).withOpacity(0.9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width : Responsive.isMobile(context) ? 300 : Responsive.isTablet(context) ? 275 : 450,
            child :
            Padding(
              padding: EdgeInsets.only(top : Responsive.isMobile(context) ? 27.9 : 0),
              child: Column(
                crossAxisAlignment: Responsive.isMobile(context) ?  CrossAxisAlignment.center : CrossAxisAlignment.start,
                mainAxisAlignment: !Responsive.isMobile(context) ? MainAxisAlignment.center :  MainAxisAlignment.start,
                children: [
                   AnimatedTextKit(
                        totalRepeatCount : 1,
                        repeatForever: false,
                        animatedTexts: [
                          WavyAnimatedText('Quentin Billac',speed: const Duration(milliseconds: 125),textStyle: GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: policeSize,color:Colors.white)),
                        ],
                      ),
                  !Responsive.isDesktop(context) ?
                  SizedBox( height: 150, width: 300,
                    child: AnimatedTextKit(
                      totalRepeatCount : 1,
                      repeatForever: false,
                      animatedTexts: [
                        TyperAnimatedText('Web & Mobile Application Designer', textAlign: Responsive.isMobile(context) ? TextAlign.center : TextAlign.left,
                            textStyle:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize:policeSize,color:Colors.white)),
                      ],
                      ),
                  ) :
                    AnimatedTextKit(
                      totalRepeatCount : 1,
                      repeatForever: false,
                      animatedTexts: [
                        TyperAnimatedText('Web & Mobile Application Designer', textAlign: Responsive.isMobile(context) ? TextAlign.center : TextAlign.left,
                            textStyle:  GoogleFonts.playfairDisplay(fontWeight: FontWeight.w500,fontSize: policeSize,color:Colors.white)),
                      ],
                    ),
                  if(Responsive.isMobile(context))
                     SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/profil.png')),
                ],
              ),
            ),
          ),
          if(!Responsive.isMobile(context))
          SizedBox(width: Responsive.isDesktop(context) ? 100 : 0),
          if(!Responsive.isMobile(context))
             SizedBox(
                width: Responsive.isTablet(context) ? 350 : 450,
                child: Image.asset('assets/images/profil.png'))
        ],
      ),
    );
  }
}
