import 'package:flutter/material.dart';
import '../main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = "fulano";
    var wh, hg;
    return CustomScaffold(
      title: "Sobre",
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Meu Perfil',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7C7C7C),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: 160,
                height: 160,
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
                      offset: Offset(10, 10),
                      blurRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/fotoExemplo.png',
                      height: 125, // Ajuste o tamanho conforme necessário
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Nome_Sobrenome',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7C7C7C),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: 230,
                height: 40,
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
                      offset: Offset(10, 10),
                      blurRadius: 0,
                    ),
                  ],
                ),
                child: const Text(
                  'nomeee',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              caixa(txt, wh = 230, hg = 40),
              SizedBox(
                height: 30,
              ),
              caixa(txt, wh = 230, hg = 40),
              SizedBox(
                height: 30,
              ),
              caixa(txt, wh = 230, hg = 40),
              SizedBox(
                height: 30,
              ),
              caixa(txt, wh = 230, hg = 40),
              SizedBox(
                height: 30,
              ),
              caixa(txt, wh = 230, hg = 40),
            ],
          ),
        ),
      ),
    );
  }

  caixa<Widget>(txt, wh, hg) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: wh,
      height: hg,
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
            offset: Offset(10, 10),
            blurRadius: 0,
          ),
        ],
      ),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color(0xff7C7C7C),
        ),
      ),
    );
  }
}
