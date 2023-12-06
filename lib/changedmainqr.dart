import 'package:flutter/material.dart';

class changedmainqr extends StatelessWidget{
  const changedmainqr({super.key});
  Widget build(context){

return Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 40, 125, 195),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ], 
          ),
          height: 310,
          width: 280,
          child: Container( 
            padding: EdgeInsets.all(25),
            child : Column(children: <Widget>[
            
             const Text(
              'scan you qr code',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(241, 247, 247, 0.91),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            ),
            SizedBox(
              height: 20,
            ),
 Container(
  padding: EdgeInsets.all(20),
  height: 180,
  width: 180,
  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(241, 247, 247, 0.91),
  ),
  child: const ImageIcon(
              AssetImage("assets/qr_code.png"),
              size: 50,
            ),
 )
          ])),
        );
  }
}