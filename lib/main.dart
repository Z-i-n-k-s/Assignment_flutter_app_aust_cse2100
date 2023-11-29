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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 236, 152),
        appBar: AppBar(
          title: Text(
            'Product Page',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: AspectRatio(
                    aspectRatio: 2 / 1.75,
                    child: Image.asset(
                      'assets/pizza.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ), // Center
      ),
    );
  }
}
