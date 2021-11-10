import 'package:flutter/material.dart';
import 'package:integradora/screens/splashScreen.dart';


class AppBasica extends StatelessWidget{
  @override
  Widget build (BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:  SplashScreen(),
    );
  }
}