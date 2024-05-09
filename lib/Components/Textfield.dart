import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const Textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
    child: TextFormField(
      validator: (text) => text!.isEmpty ? 'Нэрээ оруулна уу!' : null,
      controller: controller,
      obscureText: obscureText,
  decoration: InputDecoration(

    enabledBorder: const OutlineInputBorder(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(20.0),
        bottom: Radius.circular(20.0),
      ),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 19, 18, 18),
        
      ),
      
    ),
    
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 255, 254, 254)),),
    fillColor: Color(0xFF383838),
    filled: true,
    hintText: hintText,
    hintStyle: TextStyle(color:Colors.grey[500])
  ),
),

    );
    
  }
}