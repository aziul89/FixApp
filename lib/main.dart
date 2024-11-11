import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/favorite_page.dart';
import 'pages/splash_screen.dart';
import 'pages/profile_page.dart';

void main() => runApp(const MyApp());

bool isLoggedIn = true; //kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkklogin

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // Usando a cor amarela para a AppBar em todo o app
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFC3F75), // Cor da AppBar
          titleTextStyle: TextStyle(
            color: Colors.black, // Cor do título (preto)
            fontSize: 20, // Tamanho da fonte
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const MyHomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/favorite': (context) => const FavoritePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}

class CustomScaffold extends StatelessWidget {
  final Widget body; // A tela específica a ser renderizada
  final String title;

  const CustomScaffold({
    super.key,
    required this.body,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover o botão de voltar padrão
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo no lado esquerdo
            Image.asset(
              'assets/images/fix_logo.png',
              height: 40, // Ajuste o tamanho conforme necessário
            ),
            // Botão de menu no lado direito
            IconButton(
              icon: Image.asset('assets/images/menu.png',
                  height: 30), // Tamanho do ícone
              onPressed: () {
                // Chama a função de menu quando pressionado
                menu(context);
              },
            ),
          ],
        ),
      ),
      body: body, // Aqui renderizamos o corpo da tela que foi passada
    );
  }

  // Função para exibir o menu como um Dialog
  void menu(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Align(
          alignment:
              Alignment.topRight, // Posiciona o menu no canto superior direito
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Sem bordas arredondadas
            ),
            title: const Text("Menu"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Lista de itens do menu
                _buildMenuItem(context, '/home', "Home"),
                _buildMenuItem(context, '/favorite', "Favoritos"),
                _buildMenuItem(context, '/about', "Sobre"),
                _buildMenuItem(
                    context, '/profile', isLoggedIn ? "Perfil" : "Login"),
              ],
            ),
          ),
        );
      },
    );
  }

  // Função auxiliar para criar os itens do menu
  Widget _buildMenuItem(BuildContext context, String route, String label) {
    // Verificar se o item é o atual, sublinhando caso seja
    bool isActive = ModalRoute.of(context)?.settings.name == route;

    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          decoration: isActive ? TextDecoration.underline : TextDecoration.none,
          decorationColor: Colors.grey, // Cor do sublinhado (cinza)
        ),
      ),
      onTap: () {
        Navigator.pop(context); // Fecha o diálogo
        Navigator.pushNamed(
            context, route); // Navegar para a rota correspondente
      },
    );
  }
}
