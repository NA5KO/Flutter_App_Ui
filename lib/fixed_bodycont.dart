
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/changedmainqr.dart';
import 'package:flutter_app_ui/changedmainrate.dart';
import 'package:flutter_app_ui/changedmainrated.dart';
class fixed_bodycont extends StatelessWidget {
  const fixed_bodycont({super.key});
  @override
  Widget build(context) {
    return Stack (
      children :<Widget>[
      Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: const EdgeInsets.only(right: 30,left :30 ,top : 50, bottom:20 ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 40, 125, 195),
          boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],),
          height: 120,
          width: 320,
          child: const Row(children: <Widget>[
            SizedBox(
              width: 25,
            ),
            Text(
              '7',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(241, 247, 247, 0.91),
                  fontFamily: 'Montserrat',),
            ),
            ImageIcon(
              AssetImage("assets/receipt.png"),
              color: const Color.fromRGBO(241, 247, 247, 0.91),
              size: 50,
            ),
                        Text(
              'in  your wallet',
              style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromRGBO(241, 247, 247, 0.91),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            ),
          ]),
        ),changedmainrated()
      ],
     

    ),
    Positioned(
      child :Image.asset("assets/plus.png",height: 50,),
      right:35 ,
      top: 55,
    )]);
  }
}
