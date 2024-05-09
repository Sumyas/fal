import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Textfield2 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const Textfield2({
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
     validator: (text) {
            if (text!.isEmpty) {
              return 'Дугаараа оруулна уу!!';
            }
            final regex = RegExp('[0-9]');
            if (!regex.hasMatch(text)) {
              return 'Password oo оруул!!';
            }
            return null;
          },
     
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            FilteringTextInputFormatter.digitsOnly
          ],
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
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color.fromARGB(255, 255, 254, 254)),
              ),
              fillColor: Color(0xFF383838),
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500])),
         


   )
    );
  }
}
