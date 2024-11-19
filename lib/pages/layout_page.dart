import 'package:flutter/material.dart';

class MessageBoxPage extends StatelessWidget {
  const MessageBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFC3F75),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Caixa de Mensagem
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.yellow, // Cor ajustada para amarelo
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Deseja delogar do Fix??', // Texto ajustado
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Você tem certeza de que deseja sair?', // Mensagem secundária mantida
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Botões lado a lado
            Row(
              mainAxisSize: MainAxisSize.min, // Ajusta o tamanho ao conteúdo
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Lógica para sair
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Botão "Sair" cinza
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Sair',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 20), // Espaço entre os botões
                ElevatedButton(
                  onPressed: () {
                    // Lógica para permanecer
                    print('Ficar pressionado');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow, // Botão "Ficar" amarelo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Ficar',
                    style: TextStyle(color: Colors.black), // Texto preto para contraste
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  }
}
