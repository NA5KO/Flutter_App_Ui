
import 'package:flutter/material.dart';

class changedmainrated extends StatelessWidget {
  const changedmainrated ({super.key});
  Widget build(context){
    return    Stack(
  children: <Widget>[

  Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 186, 206, 222),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ], 
          ),
          height: 350 ,
          width: 320,
          child: Container( 
            padding: EdgeInsets.only(left :25,right :0,top: 25,bottom: 25),
            child :Column(children :<Widget>[
               Row(
mainAxisSize: MainAxisSize.min,              children: <Widget>[
            Column(children :<Widget>[
             const Text(
              'How was ',
              style: TextStyle(
                  fontSize: 30,
            color: const Color.fromARGB(255, 40, 125, 195),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            ),const Text(
              'your meal',
              style: TextStyle(
                  fontSize: 30,
            color: const Color.fromARGB(255, 40, 125, 195),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
                  
            ), const Text(
              ' today ?',
              style: TextStyle(
                  fontSize: 30,
            color: const Color.fromARGB(255, 40, 125, 195),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            )]),
      Stack(
  children: <Widget>[
  Image.asset( "assets/chef.png",height: 160,)]
  ,alignment: Alignment.topLeft,
  )
             ] 
          ),SizedBox(
          height: 25,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, children: [ 
  Image.asset( "assets/star.png",),
  Image.asset( "assets/star.png",),
  Image.asset( "assets/star.png",),
  Image.asset( "assets/star.png",),
  Image.asset( "assets/star.png",),

  
            ],),Container(
margin: EdgeInsets.only(top: 30),
padding: EdgeInsets.only(left: 35,top: 1),
  height: 40,
  width: 150,
  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
                  color: Color.fromARGB(232, 207, 183, 28),
  )
  ,child: Text('submit',style: TextStyle( fontSize: 25,         
    color: Color.fromARGB(255, 255, 255, 255),
),),),]))
        )]);
  }
} 