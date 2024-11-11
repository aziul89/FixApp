import 'package:flutter/material.dart';
import '../main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> listOne = List.generate(10, (index) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 100,
        height: 100,
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
        child: Center(
          child: Text(
            'Item $index',
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  });

  final List<Widget> listTwo = List.generate(8, (index) {
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
        child: Center(
          child: Text(
            'Item ${index + 10}',
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Home",
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const Text(
              'Home',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff7C7C7C),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categorias',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: listOne,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Profissionais',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: listTwo,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
