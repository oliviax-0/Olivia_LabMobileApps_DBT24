import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'PRASETIYA MULYA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: false,
        title: Image.network(
          'https://www.prasetiyamulya.ac.id/wp-content/uploads/2020/01/Logo-Universitas-Prasetiya-Mulya.png',
          height: 50,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(4.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.network(
                  'https://www.prasetiyamulya.ac.id/wp-content/uploads/2020/01/Logo-Universitas-Prasetiya-Mulya.png',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'VISION',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'A globally recognized School for STEMpreneur Education and Research',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'MISSION',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Provide quality STEM education and research for nurturing the holistic citizen graduates through:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '1. Collaborative learning by enterprising involving interdisciplinary catalytic projects',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      '2. Innovative and impactful research to the society',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF666666),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 500),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://www.prasetiyamulya.ac.id/wp-content/uploads/2020/01/Logo-Universitas-Prasetiya-Mulya.png',
                      height: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'BSD City Kavling Edutown I.1',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Jl. BSD Raya Utama, BSD City 15339',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Kabupaten Tangerang, Indonesia',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Tel. (021) 304-50-500',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'info@prasetiyamulya.ac.id',
                      style: TextStyle(color: Colors.white, fontSize: 14),
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
