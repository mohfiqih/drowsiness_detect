import 'dart:async';
import 'package:drowsiness_detect/home.dart';
import 'package:flutter/material.dart';
// import '../home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menunggu selama 2 detik, kemudian pindah ke halaman home
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEB000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
              height: 150,
            ),
            Text(
              'Drowsiness Detection',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
