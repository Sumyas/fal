import 'package:fal/Pages/undesnuur.dart';
import 'package:flutter/material.dart';

import '../Components/Button.dart';
import '../Components/Buttons.dart';
import '../Components/Textfield.dart';
import '../Components/Textfiled2.dart';

class nuur2 extends StatefulWidget {
  const nuur2({super.key});

  @override
  State<nuur2> createState() => _nuur2State();
}

class _nuur2State extends State<nuur2> {
  bool loggedIn = false;

  final DugaarController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: loggedIn ? Undes() : login());
  }

  login() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(color: Color(0xFF171818)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/unnamed.png',
              height: 120,
              width: 70,
            ),
            SizedBox(
              width: 10, // Энэ нь текстээс зайг нэмнэ
            ),
            Text(
              'Zeely',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontStyle: FontStyle.normal),
            ),
            SizedBox(height: 32),
            
            SizedBox(height: 32),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Textfield2(
                      controller: DugaarController,
                      hintText: 'Утасны Дугаар',
                      obscureText: false,
                      
                    ),
                    Textfield(
                      controller: passwordController,
                      hintText: 'Нууц Үг',
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Нууц үг сэргээх',
                    style: TextStyle(color: Colors.grey[600]),
                  )
                ],
              ),
            ),
            SizedBox(height: 89),
           Button(onTap: _validate),
            SizedBox(height: 10),
            Buttons(onTap: signUserIn),
          ],
        )
      ],
    );
  }

  void _validate() {
    final form = _formKey.currentState;

    if (!form!.validate()) {
      return;
    }
    setState(() {
      loggedIn = true;
    });
  }
}
