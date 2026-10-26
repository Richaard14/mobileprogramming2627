
import 'package:flutter/material.dart';
import 'layarkeduapisah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHome(),
        '/layar2': (context) => const LayarKedua(),
      },
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Pertama')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layar2');
              },
              child: const Text('Ke Layar Kedua'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayarKeduaPisah(
                      pesan: 'halloo ini pesan dari screen 1',
                    ),
                  ),
                );
              },
              child: const Text('Ke Layar Kedua Pisah'),
            ),
          ],
        ),
      ),
    );
  }
}

class LayarKedua extends StatelessWidget {
  const LayarKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Kedua')),
      body: const Center(
        child: Text('Ini screen kedua'),
      ),
    );
  }
}