import 'package:flutter/material.dart';
import 'package:intern_project/screens/home.dart';
import 'package:intern_project/screens/onboard_screen.dart';
import 'package:intern_project/screens/profile_screen.dart';
import 'package:intern_project/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:intern_project/providers/profile_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProfileProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'SoftAir Technologies',
          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            '/onboard' : (context) => OnboardScreen(),
            '/home' : (context) => Home(),
            '/profile' : (context) => ProfileScreen()
          }
      ),
    );
  }
}
