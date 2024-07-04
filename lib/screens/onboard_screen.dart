import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,50.0,20.0,0.0),
        child: Center(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 500.0,
                width: 500.0,
                child: Image.asset(
                  'assets/world.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10.0,),
              Container(
                height: 155.0,
                child: Expanded(
                  flex: 1,
                  child : Container(
                    height: 25.0,
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30.0,25.0,30.0,25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 27.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff7c4dff)
                            ),
                          ),
                          SizedBox(height: 2.0,),
                          Text(
                              'What aspect of Exploration Interests you the most',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50.0,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).popAndPushNamed('/home');
                  },
                  style:ButtonStyle(
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.deepPurpleAccent[400]!),
                  ),
                  child: const Icon(Icons.arrow_forward_rounded),
                ),
              ),
              const SizedBox(height: 30.0,),
            ]
          ),
        ),
      ),
    );
  }
}
