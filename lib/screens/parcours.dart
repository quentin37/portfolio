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
  double title = 35;
  double subTitle = 25;
  double description = 20;
  double height = 250;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (Responsive.isMobile(context)) {
      title = 25;subTitle = 20;description = 15;height=300;
    } else if (Responsive.isTablet(context)) {
      title = 30;subTitle = 25;description = 20;height=250;
    } else {
      title = 35;subTitle = 30;description = 20;height=250;
    }
  }

  final List<Map<String, String>> timelineData = [
    {
      'color':'0xffB3B3B3',
      'year': '2023',
      'title': 'CapMonetique',
      'description':
      'Suite à mon alternance et à l\'obtention de mon diplôme de Concepteur Développeur d\'Applications, l\'entreprise a souhaité poursuivre notre collaboration en me proposant un contrat en CDI.'
    },
    {
      'color':'0xff707373',
      'year': '2022',
      'title': 'Alternance - WildCodeSchool',
      'description':
      'À la fin de ma formation Développeur Web et Mobile, j\'ai poursuivi avec une formation en alternance de Concepteur Développeur d\'Applications.'
    },
    {
      'color':'0xffFFC029',
      'year': '2022',
      'title': 'Formation - WildCodeSchool',
      'description':
      'Après une année en école d\'ingénieur, j\'ai décidé de me réorienter en devenant Développeur Web et Mobile via la Wild Code School.'
    },
    {
      'color':'0xffB3B3B3',
      'year': '2021',
      'title': 'SupInfo',
      'description':
      'Après mon baccalauréat STI2D, j\'ai approfondi mes connaissances en informatique en intégrant une école d\'ingénieur.'
    },
    {
      'color':'0xff707373',
      'year': '2020',
      'title': 'Baccalauréat',
      'description':
      'Obtention du baccalauréat Technologique STI2D avec la mention Assez Bien, option SIN (Systèmes d\'Information et Numérique).'
    }
  ];

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
          children:
          timelineData.map((data) {
            return _buildTimelineRow(
                context,int.parse(data['color']!), data['year']!, data['title']!, data['description']!, title, subTitle, description, Responsive.isMobile(context) ? 15 : 30,height);
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildTimelineRow(BuildContext context,int color, String year, String title, String description,
      double titleFontSize, double subTitleFontSize, double descriptionFontSize, double dotSize,double height) {
    return SizedBox(
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Year and Title Column
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(year, style: TextStyle(fontSize: titleFontSize)),
                  Text(title, style: TextStyle(fontSize: subTitleFontSize)),
                ],
              ),
            ),

            // Vertical Line with Dot
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Center(
                child: Container(
                  width: dotSize,
                  color: Color(color),
                  child: Center(
                    child: Container(
                      width: dotSize / 2,
                      height: dotSize / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Description Column
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      description,
                      style: TextStyle(fontSize: descriptionFontSize),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
