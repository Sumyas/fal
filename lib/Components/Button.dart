import 'package:fal/Pages/undesnuur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
 final Function()? onTap;
  const Button({
    super.key,required this.onTap,
 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap!();
      } ,
      child:Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text('Нэвтрэх',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),
        ),
      ) ,
    ),
    );
      
  }
}