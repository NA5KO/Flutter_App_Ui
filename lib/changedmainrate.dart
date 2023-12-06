import 'package:flutter/material.dart';

class changedmainrate extends StatelessWidget{
  const changedmainrate({super.key});
  Widget build(context){
    return Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 2),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
          height: 370,
          width: 320,
          child: Container( 
            padding: EdgeInsets.all(15),
            child : Column(children: <Widget>[
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: <Widget>[
               const ImageIcon(
              AssetImage("assets/Vector.png"),
              size: 40,
                  color: Color.fromRGBO(241, 247, 247, 0.91),
            ),
             const Text(
              'Today\'s Menu',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(241, 247, 247, 0.91),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            ),]),
            SizedBox(
              height: 20,
            ),
 Container(
  padding: EdgeInsets.only(right :11),
  height: 50,
  width: 250,
  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(241, 247, 247, 0.91),
  ),
  child: Row( 
   
    children: <Widget>[
   ImageIcon (
              AssetImage("assets/fork.png"),
                          color: const Color.fromARGB(255, 40, 125, 195),

              size: 70,
            ), const Text(
              'Salade Tunisienne',
              style: TextStyle(
                  fontSize: 20,
                          color: const Color.fromARGB(255, 40, 125, 195),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            )])
 ), Container(
  margin: EdgeInsets.symmetric(vertical: 30),
  padding: EdgeInsets.only(right :11),
  height: 50,
  width: 250,
  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(241, 247, 247, 0.91),
  ),
  child: Row( 
   
    children: <Widget>[
   ImageIcon (
              AssetImage("assets/spoon.png"),
                          color: const Color.fromARGB(255, 40, 125, 195),

              size: 70,
            ), const Text(
              'kouskous',
              style: TextStyle(
                  fontSize: 20,
                          color: const Color.fromARGB(255, 40, 125, 195),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            )])
 ),
  Container(
     margin: EdgeInsets.only(bottom :7),

  padding: EdgeInsets.only(right :11),
  height: 50,
  width: 250,
  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(241, 247, 247, 0.91),
  ),
  child: Row( 
   
    children: <Widget>[
   ImageIcon (
              AssetImage("assets/fork.png"),
                          color: const Color.fromARGB(255, 40, 125, 195),

              size: 70,
            ), const Text(
              'Salade Tunisienne',
              style: TextStyle(
                  fontSize: 20,
                          color: const Color.fromARGB(255, 40, 125, 195),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),
            )])
 ) ,Row(
  mainAxisAlignment:MainAxisAlignment.center,
 children :<Widget>  [ImageIcon (
              AssetImage("assets/thumbs.png"),
color: Colors.white,
              size: 50,
            ),SizedBox(width: 8,),Column(
              children : <Widget>[ 
                SizedBox(
                  height: 22,
                ),
                Text(
              'rate today\s Menu',
              style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromRGBO(241, 247, 247, 0.91),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w700,),//add a line
            )] ),
          ])])),
        );
  }
  }
