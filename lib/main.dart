import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 232, 42, 150),
          title: const Text(
            'Row and Column',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  KotakWarnaFavorite(color: Colors.red, label: "Favorite"),
                  SizedBox(width: 20),
                  KotakWarnaFavorite(color: Colors.green, label: "Favorite"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  KotakWarnaFavorite(color: Colors.blue, label: "Favorite"),
                  SizedBox(width: 20),
                  KotakWarnaFavorite(color: Colors.orange, label: "Favorite"),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 238, 3, 128),
          onPressed: () {
            print("Tombol Plus Ditekan");
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}

// Widget Kotak Warna dengan ikon hati berwarna merah dan teks di bawahnya
class KotakWarnaFavorite extends StatelessWidget {
  final Color color;
  final String label;
  const KotakWarnaFavorite({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black26, width: 2),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
