import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_desgin/buildconvertrow.dart';
import 'package:ui_desgin/casualbar.dart';
import 'package:ui_desgin/uidesign.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class commerce extends StatefulWidget {
  const commerce({super.key});

  @override
  State<commerce> createState() => _commerceState();
}

final List<String> imageUrls = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ9dFmHpORm762km7LqeyM2f5khiLVhzwAepIcazWq&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJhNhTcdpoN6c-rzLj336_o2WpgLgeqirPchSSBerB&s',
  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ9dFmHpORm762km7LqeyM2f5khiLVhzwAepIcazWq&s'
];
int _currentIndex = 0;
int _surrentIndex = 0;

// List<Widget> body = const [
//   Icon(Icons.home),
//   Icon(Icons.favorite_outline),
//   Icon(Icons.newspaper),
//   Icon(Icons.category),
// ];

class _commerceState extends State<commerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("My Beauty Deals",
              style: GoogleFonts.dancingScript(
                textStyle: TextStyle(
                  color: Colors.black,
                ),
              ))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Latest Deals",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 180),
                    child: Text("view all"),
                  ),
                  Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  circleavater(
                    Image: AssetImage("mnp.png"),
                  ),
                  circleavater(
                    Image: AssetImage("mn.png"),
                  ),
                  circleavater(
                    Image: AssetImage("makeup.png"),
                  ),
                  circleavater(
                    Image: AssetImage("mn.png"),
                  ),
                  circleavater(
                    Image: AssetImage("mnp.png"),
                  ),
                  circleavater(
                    Image: AssetImage("mnp.png"),
                  ),
                  circleavater(
                    Image: AssetImage("mn.png"),
                  ),
                  circleavater(
                    Image: AssetImage("makeup.png"),
                  ),
                  circleavater(
                    Image: AssetImage("mn.png"),
                  ),
                  circleavater(
                    Image: AssetImage("mnp.png"),
                  ),
                  // circleavater(),
                  // circleavater(),
                  // circleavater(),
                  // circleavater(),
                  // circleavater(),
                  // circleavater(),
                  // circleavater(),

                  // bildmethod('ali', 'mnp.png'),
                  // bildmethod('ali', 'mnp.png'),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Anything',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Categories ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: Text("view all"),
                  ),
                  Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NewWidget(
                    icon: FontAwesomeIcons.fire, // Example icon
                    backgroundColor: Color.fromARGB(
                        255, 168, 228, 140), // Example background color
                    name: 'Neuhelitio',
                    iconColor: Colors.greenAccent,
                  ),

                  NewWidget(
                    icon: FontAwesomeIcons.bomb, // Example icon
                    backgroundColor:
                        Colors.lightBlueAccent, // Example background color
                    name: 'Duftie',
                    iconColor: Color.fromARGB(255, 243, 191, 226),
                  ),
                  NewWidget(
                    icon: Icons.image, // Example icon
                    backgroundColor: Color.fromARGB(
                        255, 240, 211, 191), // Example background color
                    name: 'Makeup', iconColor: Colors.greenAccent,
                  ),
                  NewWidget(
                    icon: Icons.search, // Example icon
                    backgroundColor: Color.fromARGB(
                        255, 236, 247, 187), // Example background color
                    name: 'Gesicht', iconColor: Colors.greenAccent,
                  ),
                  NewWidget(
                    icon: Icons.fire_extinguisher_outlined, // Example icon
                    backgroundColor:
                        Colors.lightBlueAccent, // Example background color
                    name: 'Korper',
                    iconColor: Color.fromARGB(255, 240, 219, 191),
                  ),
                  NewWidget(
                    icon: Icons.fire_extinguisher_outlined, // Example icon
                    backgroundColor: Color.fromARGB(
                        255, 194, 243, 184), // Example background color
                    name: 'Hello', iconColor: Colors.greenAccent,
                  ),
                  NewWidget(
                    icon: FontAwesomeIcons.phone, // Example icon
                    backgroundColor:
                        Colors.lightBlueAccent, // Example background color
                    name: 'Hacker', iconColor: Colors.greenAccent,
                  ),

                  // bildmethod('ali', "mn.png"),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                  // bildmethod('ali', "mnp.png"),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 130.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _surrentIndex = index;
                  });
                },
              ),
              items: imageUrls.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageUrls.map((image) {
                int index = imageUrls.indexOf(image);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _surrentIndex == index ? Colors.red : Colors.grey,
                  ),
                );
              }
              ).toList(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Latest Deal ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150),
                    child: Text("Deal of the Day"),
                  ),
                  Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // bildmethod(), bildmethod(), bildmethod(), bildmethod(),
                  // bildmethod(), bildmethod(), bildmethod(), bildmethod(),

                  bildmethod("mnp.png"),
                  bildmethod("makeup.png"),
                  bildmethod("mn.png"), bildmethod("mnp.png"),
                  bildmethod("makeup.png"),
                  bildmethod("mn.png"),
                  bildmethod("mnp.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final String name;
  const NewWidget({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.name,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 25,
            child: Icon(
              icon,
              color: iconColor,
              size: 32.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(name, style: TextStyle(fontSize: 16.0)),
        ],
      ),
    );
  }
}

Stack bildmethod(String filename) {
  return Stack(children: [
    Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(filename),
      ),
    ),
    Positioned(
      bottom: 35,
      left: 50,
      child: CircleAvatar(
        radius: 8,
        backgroundColor: Colors.red,
        child: Text(
          "12",
          style: TextStyle(fontSize: 9),
        ),
      ),
    ),
  ]);
}

// ignore: non_constant_identifier_names
class circleavater extends StatelessWidget {
  final ImageProvider Image;
  const circleavater({
    super.key,
    required this.Image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: CircleAvatar(
          radius: 27,
          backgroundColor: Colors.red,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: Image,
          )),
    );
  }
}
