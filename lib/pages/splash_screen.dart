import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    });

    return Scaffold(
      body: Container(
        // Define a área com o degradê
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // Início do degradê (cima)
            end: Alignment.bottomCenter, // Fim do degradê (baixo)
            colors: [
              Color(0xFFFC3F75), // Cor do topo
              Color(0xFFDC1276), // Cor de baixo
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/fix_logo.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
