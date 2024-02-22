import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 19, 24),
      body: Center(
        child: Text(
          'COMING SOON ALSO',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w800,
            color: Colors.amber,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
