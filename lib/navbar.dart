import 'package:flutter/material.dart';
import 'package:flutter_app_ui/qr_icon.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbar();
}

class _navbar extends State<navbar> {

  int selectedIconIndex = -1;
  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(    mainAxisSize: MainAxisSize.min,children : <Widget>[
        const ImageIcon (
AssetImage("assets/01 align center.png")      ,
          color: Color.fromARGB(255, 40, 125, 195),
          size: 50,
        ),Container(
          height: 7,
          width: 7,
  decoration: const BoxDecoration(
shape: BoxShape.circle,
          color: Color.fromARGB(255, 40, 125, 195),
 ), // Your container's content
),
        ]),
        const ImageIcon (
AssetImage("assets/calendar 2.png")      ,
    color: Color.fromARGB(255, 40, 125, 195),
          size: 40,
        ),
        const qr_code(),
        
        const ImageIcon (
AssetImage("assets/Mask group.png"),
          color: Color.fromARGB(255, 40, 125, 195),
          size: 45,
        ),
        const ImageIcon (
AssetImage("assets/shopping-bag-add 2.png"),
          color: Color.fromARGB(255, 40, 125, 195),
          size: 40,
        ),
      ],
    );
  }
}
