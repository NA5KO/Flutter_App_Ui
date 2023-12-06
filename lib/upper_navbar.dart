import 'package:flutter/material.dart';

class upper_navbar extends StatelessWidget{
  const upper_navbar({super.key});
 @override
  Widget build(context){
  return 
            AppBar(     
              backgroundColor: Colors.transparent,
        elevation: 0,

              leading: Builder(builder: (BuildContext context) {
                return Container ( margin:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child :const ImageIcon (
AssetImage("assets/man.png")      ,
      color: Color.fromARGB(255, 40, 125, 195),
                  size: 40,
                ));
              }),
              actions: const <Widget>[
                Text(
              '7',
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 249, 225, 11),
                  fontFamily: 'Montserrat',),
            ),
    ImageIcon (
     AssetImage("assets/receipt.png"),
          color: Color.fromARGB(255, 249, 225, 11),
                  size: 36,
                )
              ],
            );
          
      
    
}
}