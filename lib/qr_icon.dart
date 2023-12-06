import 'package:flutter/material.dart';

class qr_code extends StatelessWidget {
  const qr_code({super.key})
;
@override
  Widget build(context){
  return( Column(    mainAxisSize: MainAxisSize.min,

children :<Widget>[
    Container(
      width: 100,
    height :70,
    decoration: const BoxDecoration(
    shape: BoxShape.circle,
      color: Color.fromARGB(255, 40, 125, 195),
  boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 114, 114, 119),
        blurRadius: 6,
        offset: Offset(6, 6), // Shadow position
      ),
    ],),
      child: const Icon(
      Icons.qr_code,
      color: Color.fromARGB(255, 255, 255, 255),
      size:40,
      
    ),
  
     ), const SizedBox(
      height: 20,
      
     )
     ],)
     );
}
}