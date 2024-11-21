import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> favoritos = List.generate(10, (index) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 100,
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xfff7fb27),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff7C7C7C),
                offset: Offset(5, 5),
                blurRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image, size: 40, color: Colors.grey),
              SizedBox(height: 10),
              Icon(Icons.favorite, color: Colors.red),
            ],
          ),
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoritos"),
        backgroundColor: const Color(0xfff74259),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Text(
                'Favoritos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7C7C7C),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 150, // Altura para exibir os favoritos
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: favoritos,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
