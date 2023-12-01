import 'package:flutter/material.dart';
import 'package:ui_desgin/buildconvertrow.dart';

class uidesign extends StatefulWidget {
  const uidesign({super.key});

  @override
  State<uidesign> createState() => _uidesignState();
}

class _uidesignState extends State<uidesign> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.red,
      body: Stack(
       children: [
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 50, right: 5, left: 5),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   IconButton(
                     onPressed: () {
                       _globalKey.currentState!.openDrawer();
                     },
                     icon: Icon(
                       Icons.menu,
                       color: Colors.white,
                     ),
                   ),
                   IconButton(
                     onPressed: () {},
                     icon: Icon(Icons.search),
                     color: Colors.white,
                   )
                 ],
               ),
             ),
             SizedBox(
               height: 50,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 padding: const EdgeInsets.only(left: 10),
                 children: [
                   rowha('Message'),
                   rowha('Online'),
      
                   rowha('Groups'),
                   rowha('Chats'),
                   rowha('Calls'),
                   rowha('Online'),
      
                   // TextButton(
                   //     onPressed: () {},
                   //     child: const Text("Message",
                   //         style:
                   //             TextStyle(color: Colors.white, fontSize: 20))),
                   // const SizedBox(
                   //   width: 35,
                   // ),
                   // TextButton(
                   //     onPressed: () {},
                   //     child: const Text("Group",
                   //         style:
                   //             TextStyle(color: Colors.white, fontSize: 20))),
                   // const SizedBox(
                   //   width: 35,
                   // ),
                   // TextButton(
                   //     onPressed: () {},
                   //     child: const Text("Online",
                   //         style:
                   //             TextStyle(color: Colors.white, fontSize: 20))),
                   // const SizedBox(
                   //   width: 35,
                   // ),
                   // TextButton(
                   //     onPressed: () {},
                   //     child: const Text("Chat",
                   //         style:
                   //             TextStyle(color: Colors.white, fontSize: 20))),
                 ],
               ),
             )
           ],
         ),
         Positioned(
             top: 150,
             right: 0,
             left: 0,
             child: Container(
               height: 220,
               decoration: const BoxDecoration(
                   borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(20),
                       topRight: Radius.circular(20)),
                   color: Colors.green),
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         const Text("Shahzaib",
                             style: TextStyle(color: Colors.white)),
                         IconButton(
                           onPressed: () {},
                           icon: const Icon(Icons.more_horiz),
                           color: Colors.white,
                         )
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 90,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
                         bildmethod('Alia', "mnp.png"),
                         bildmethod('Alia', "mn.png"),
                         bildmethod('Alia', "mnp.png"),
                         bildmethod('Alia', "mnp.png"),
                         bildmethod('Alia', "mnp.png"),
                         bildmethod('Alia', "mnp.png"),
                         bildmethod('Alia', "mnp.png"),
                       ],
                     ),
                   )
                 ],
               ),
             )),
         Positioned(
             top: 330,
             left: 0,
             right: 0,
             bottom: 0,
             child: Container(
               padding: const EdgeInsets.symmetric(vertical: 25),
               decoration: const BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(40),
                     topRight: Radius.circular(40)),
               ),
               child: ListView(
                   padding: const EdgeInsets.only(left: 25),
                   children: [
                     BuildconverRow("Shahzaib", "jsjjx", 'mnp.png', 0),
                     BuildconverRow("Shahzaib", "jsx", 'mnp.png', 2),
                     BuildconverRow(
                         "Shahzaib", "shahzaib rizwan", 'mnp.png', 0),
                     BuildconverRow("Shahzaib", "jsjjx", 'mnp.png', 3),
                     BuildconverRow("Shahzaib", "jsjjx", 'mnp.png', 0),
                     BuildconverRow("Shahzaib", "jsjjx", 'mnp.png', 0),
                     BuildconverRow("Shahzaib", "jsjjx", 'mnp.png', 4),
                     BuildconverRow("Shahzaib", "jsjjx", 'mnp.png', 0),
                   ]),
             ))
       ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.edit_outlined,
          size: 20,
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.black,
        width: 250,
      ),
    );
  }

  TextButton rowha(String names) {
    return TextButton(
        onPressed: () {},
        child:
            Text(names, style: TextStyle(color: Colors.white, fontSize: 20)));
  }

  Padding bildmethod(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        children: [
          circleavater(filename: filename),
          const SizedBox(
            height: 10,
          ),
          Text(name, style: const TextStyle(color: Colors.white, fontSize: 10))
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
class circleavater extends StatelessWidget {
  final String filename;
  const circleavater({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: AssetImage('assets/$filename'),
      ),
    );
  }
}
