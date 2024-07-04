import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier{
  String name;

  ProfileProvider({this.name = 'John Doe'});

  void changeUserName({required String newName}) async {
    name = newName;
    notifyListeners();
  }
}