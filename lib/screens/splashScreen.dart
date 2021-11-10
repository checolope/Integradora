import 'dart:async';

import 'package:flutter/material.dart';
import 'package:integradora/screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), _onShowLogin);
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  void _onShowLogin() {
    if(mounted){
      Navigator.of(context).pushReplacement(LoginScreen.route());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green[600],
      child: Column(
        children: <Widget>[
          SizedBox(height: 100.0,),
          Flexible(
            flex: 2,
            child: SafeArea(
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: Image.asset('assets/images/argelbejarano.png'),
              ),
            ),
          ),
          Text(
            'Servios a Domicilio',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Flexible(
            flex: 2,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}