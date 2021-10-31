import 'package:flutter/material.dart';

import 'layout/home_layout.dart';

void main()
{


  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: HomeLayout(),
    );
  }
}