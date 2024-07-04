import 'dart:ui';

import 'package:flutter/material.dart';

const emailInputDecoration =
InputDecoration(
  iconColor: Color(0xff7c4dff),
    fillColor: Colors.white,
    filled: true,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff7c4dff), width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff7c4dff), width: 2.0),
    )
);
const passwordInputDecoration =
InputDecoration(
    iconColor: Color(0xff7c4dff),
    fillColor: Colors.white,
    filled: true,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff7c4dff), width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff7c4dff), width: 2.0),
    )
);

const labelStyle =
    TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,

    );