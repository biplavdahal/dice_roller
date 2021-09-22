import 'dart:math';

import 'package:flutter/material.dart';
 


 void main()=> runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   title: "Dice app",
   home: HomePage(),
 ));
 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
   int  diceNumber=1;

   void changeDice(){
     setState(() {
       diceNumber=Random().nextInt(6)+1;
     });
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Dice Roller"),
       centerTitle: true,
       ),
       body: Column(children: [
         SizedBox(height: 20),
         Center(child: Image.asset("assets/$diceNumber.png",height: 100, width: 100,)),
         MaterialButton(
           color: Colors.purple,
           onPressed: changeDice,
           child: Text("roll",style: TextStyle(color: Colors.white),),
           
         ),
         SizedBox(height: 70),
          Text("Roll the dice ",style: TextStyle(color: Colors.black)),

       ],),
       
     );
   }
 }
 