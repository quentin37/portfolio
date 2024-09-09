import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../composant/responsive.dart';
import 'home_page.dart';

class MyPath extends StatefulWidget {
  const MyPath({super.key});

  @override
  State<MyPath> createState() => MyPathState();
}

class MyPathState extends State<MyPath> {
  bool isHovering1 = false;
  bool isHovering2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF0F0F0),
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
                      return const MyHomePage(); // Replace with your destination page
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
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2023', style: TextStyle(fontSize: 40),),
                        Text('CapMonetique',style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Center(
                      child: Container(
                        width: 30,
                        color: const Color(0xffB3B3B3),
                        child: Center(
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),),
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(children: [
                      Flexible(child: Text('Suite à mon alternance et à l\'obtention de mon diplôme de Concepteur Développeur d\'Applications, l\'entreprise a souhaité poursuivre notre collaboration en me proposant un contrat en CDI, ce qui témoigne de la confiance qu\'elle m\'accorde pour continuer à contribuer à ses projets'))
                    ],),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2022', style: TextStyle(fontSize: 40),),
                        Text('Alternance - WildCodeSchool',style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Center(
                      child: Container(
                          width: 30,
                          color: const Color(0xff707373),
                          child: Center(
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(children: [
                      Flexible(child: Text('À la fin de ma formation Développeur Web et Mobile, j\'ai souhaité poursuivre mon parcours avec la Wild Code School en intégrant une deuxième formation en alternance sur un an, celle de Concepteur Développeur d\'Applications.'))
                    ],),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2022', style: TextStyle(fontSize: 40),),
                        Text('Formation - WildCodeSchool',style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Center(
                      child: Container(
                          width: 30,
                          color: const Color(0xffFFC029),
                          child: Center(
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(children: [
                      Flexible(child: Text('Suite à mon année en école d\'ingénieur, où j\'ai découvert le développement informatique, j\'ai décidé de me réorienter en suivant une formation pour devenir Développeur Web et Mobile.'))
                    ],),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2021', style: TextStyle(fontSize: 40),),
                        Text('SupInfo',style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Center(
                      child: Container(
                          width: 30,
                          color: const Color(0xffB3B3B3),
                          child: Center(
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(children: [
                      Flexible(child: Text('Après l\'obtention de mon baccalauréat STI2D, j\'ai souhaité approfondir mes connaissances en informatique. J\'ai donc décidé d\'intégrer une école d\'ingénieur, où j\'ai poursuivi mes études jusqu\'en 2022.'))
                    ],),
                  )

                ],
              ),
            ),

            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2020', style: TextStyle(fontSize: 40),),
                        Text('Baccalauréat',style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  SizedBox(
                    //width: ,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Center(
                      child: Container(
                          width: 30,
                          color: const Color(0xff707373),
                          child: Center(
                            child: Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(children: [
                      Flexible(child: Text('Obtention du baccalauréat Technologique STI2D (Sciences et Technologies de l\'Industrie et du Développement Durable), option SIN (Systèmes d\'Information et Numérique), avec la mention Assez Bien.'))
                    ],),
                  )

                ],
              ),
            )

           ],
        ),
      ),
    );
  }
}
