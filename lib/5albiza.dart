import 'package:flutter/material.dart';
import 'package:flutter_app_ui/qr_icon.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbar();
}

class _navbar extends State<navbar> {
final List <String> images =["assets/01 align center.png","assets/calendar 2.png","assets/Mask group.png","assets/shopping-bag-add 2.png"];

  int selectedIconIndex = -1;
  @override
  Widget build(context) {
    List<Widget> icons = [];

        for(int i =0;i<4;i++){
       
            icons.add(
ElevatedButton(
    onPressed:() {setState(() {
              selectedIconIndex = i;
});} ,
    child: Wrap(
        children: <Widget>[        
          

        Column(    mainAxisSize: MainAxisSize.min,children : <Widget>[
          

         ImageIcon (
AssetImage(images[i])      ,
          color: Color.fromARGB(255, 40, 125, 195),
          size:50,
        ),       
         if (selectedIconIndex==i)
          Container(
          height: 7,
          width: 7,
  decoration: const BoxDecoration(
shape: BoxShape.circle,
          color: Color.fromARGB(255, 40, 125, 195),
 ), // Your container's content
),
        ]),        ])));}
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[ icons[0],icons[1],qr_code(),icons[2],icons[3]
    ]
  );
  
}}
