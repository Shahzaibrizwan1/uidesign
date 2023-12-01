// import 'package:flutter/material.dart';
// import 'package:ui_desgin/comm.dart';
// import 'package:ui_desgin/commer.dart';
// import 'package:ui_desgin/uidesign.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(),
//       home: commerce(),
//     );
//   }
// }

// import 'package:bottom_navigation/camera_view.dart';
// import 'package:bottom_navigation/home_view.dart';
// import 'package:bottom_navigation/shape_view.dart';
import 'package:flutter/material.dart';
import 'package:ui_desgin/comm.dart';
import 'package:ui_desgin/uidesign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bottom Navigation Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final pages = const <Widget>[
    commerce(),
    uidesign(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          selectedFontSize: 12,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Favoriten",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Categories")
          ]),
    );
  }
}
