import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).popAndPushNamed('/onboard');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0,350.0,30.0,0.0),
          child: Column(
            children: [
              SizedBox(
                height: 55.0,
                width: 200.0,
                child: Image.asset(
                  'assets/soft_air.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20.0,),
              SizedBox(
                height: 370.0,
                width: 210.0,
                child: Image.asset(
                    'assets/suit_man.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
