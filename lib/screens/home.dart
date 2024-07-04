import 'package:flutter/material.dart';
import 'package:intern_project/providers/profile_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String name = context.watch<ProfileProvider>().name;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 3.0,
        backgroundColor: Colors.white,
        title: const Text(
          'SoftAir',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            color: Color(0xff7c4dff),
          ),
        ),
        centerTitle: true,
        actions: [
            TextButton.icon(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.deepPurpleAccent[400]!),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/profile');
              },
              label: const Text('Profile'),
              icon: const Icon(Icons.person),
            ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25.0,),
            Text(
              "Welcome! $name",
              style: const TextStyle(
                fontSize: 35.0,
                color: Color(0xff7c4dff),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0,),
            const Text(
              'This is the home page of the SoftAir Application. Feel free to check the profile page of the user',
              style: TextStyle(
                fontSize: 19.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
