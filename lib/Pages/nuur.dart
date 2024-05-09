import 'package:flutter/material.dart';

class nuur extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      body:Stack(
        alignment: Alignment.center,
        children: [
         Container(color: Color(0xFF171818)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/unnamed.png',
                height:150,
                width: 120,
              ),
              Text(
                'Zeely',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 21,
                  fontStyle: FontStyle.normal
                ),
              )
              
            ],)
         
        ],
      ),
    );
  
  }
}