import 'dart:async';

import 'package:flutter/material.dart';
import 'package:binge_beta_1/search.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => search1(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 19, 24),
      body: Container(
        color: Color.fromARGB(255, 21, 19, 24),
        child: Center(
          child: Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/binge_logo.png')),
          // Text(
          //   'BINGE',
          //   style: TextStyle(
          //       fontSize: 34,
          //       fontWeight: FontWeight.w700,
          //       color: Colors.deepPurpleAccent),
          // )
        ),
      ),
    );
  }
}
