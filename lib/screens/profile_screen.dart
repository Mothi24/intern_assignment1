import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intern_project/providers/profile_provider.dart';
import 'package:intern_project/shared/constants.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final _formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String mobile_no = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff7c4dff),
        title: const Text(
          'Your profile',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _TopPortion(),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff7c4dff),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 50.0),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: 18.0,
                              ),
                              const Text(
                                ' Your Name :',
                                style: labelStyle,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              TextFormField(
                                validator: (val) => null,
                                decoration:
                                    emailInputDecoration.copyWith(hintText: 'Name',icon: Icon(Icons.person_outlined)),
                                onChanged: (val) {
                                  setState(() {
                                    name = val;
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 18.0,
                              ),
                              const Text(
                                ' Email :',
                                style: labelStyle,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              TextFormField(
                                validator: (val) => null,
                                decoration:
                                    emailInputDecoration.copyWith(hintText: 'email',icon: Icon(Icons.mail_outline_rounded)),
                                onChanged: (val) {
                                  setState(() {
                                    email = val;
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 18.0,
                              ),
                              const Text(
                                ' Phone Number :',
                                style: labelStyle,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              TextFormField(
                                validator: (val)=> null,
                                decoration: emailInputDecoration.copyWith(
                                    hintText: 'Phone Number',
                                    icon: const Icon(Icons.phone_android)),
                                onChanged: (val) {
                                  setState(() {
                                    mobile_no = val;
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 18.0,
                              ),
                              const Text(
                                ' Password :',
                                style: labelStyle,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              TextFormField(
                                validator: (val) => null,
                                decoration: passwordInputDecoration.copyWith(
                                    hintText: 'Password',icon: Icon(Icons.lock_outline_rounded)),
                                onChanged: (val) {
                                  setState(() {
                                    password = val;
                                  });
                                },
                                obscureText: true,
                              ),
                              const SizedBox(height: 25.0,),
                              Center(
                                child: SizedBox(
                                  width: 300.0,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          )
                                      ),
                                      onPressed: () {
                                        if(_formKey.currentState!.validate()) {
                                          print(name);
                                          context.read<ProfileProvider>()
                                              .changeUserName(newName: name);
                                        }
                                      },
                                      child: const Text(
                                          'Confirm',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0,),

                            ]),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              width: 320.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.deepPurpleAccent[400]!),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            decoration: const BoxDecoration(
                color: Color(0xff7c4dff),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 140,
              height: 140,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/suit_man.png')),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
