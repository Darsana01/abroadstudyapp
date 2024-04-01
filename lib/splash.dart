import 'package:abroad/registration.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splash_screen> {
  double _imageSize = 200;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _imageSize = 400;
      });
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>  RegistrationPage(),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.black87,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _imageSize,
                height: _imageSize,
                child: Image.asset(
                  'assets/images/imatlogo.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'App Name',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}