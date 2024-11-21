import 'package:flutter/material.dart';
import '../main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Sobre",
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Sobre',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7C7C7C),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: 250,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xffFFFF00),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff7C7C7C),
                      offset: Offset(20, 20),
                      blurRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Olá!!!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Este é um aplicativo simples feito com Flutter. '
                      'Aqui você pode aprender como navegar entre páginas e '
                      'fazer chamadas de API. A página "Sobre" é destinada a '
                      'informar ao usuário mais sobre o app.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
