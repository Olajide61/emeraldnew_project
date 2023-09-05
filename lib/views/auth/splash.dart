import 'package:emerald_newproject/views/auth/onboard_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 2;

  @override
  void initState() {
    Future.delayed( Duration(seconds: splashtime), () async {
      
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const OnboardScreen();
        }));
      
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/emerald.png',
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
