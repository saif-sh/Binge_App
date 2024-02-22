import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/button.dart';
import 'package:flutter_application_1/assets/button1.dart';
import 'package:flutter_application_1/main.dart';

class loginpg extends StatelessWidget {
  const loginpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/mnpg.png"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset('assets/binge_logo.png')),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                style: buttonprim,
                onPressed: () {},
                child: const Text('Suscribe Now',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: buttonprim1,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MyHomePage(title: 'Binge')));
                },
                child: const Text('Sign In',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text('Dont have an Account ? Sign in',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
