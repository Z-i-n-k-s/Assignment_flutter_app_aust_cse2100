import 'package:assignment_app/pages/buy_page.dart';
import 'package:assignment_app/pages/confirm_page.dart';
import 'package:assignment_app/pages/product_page.dart';
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
      home: const ProductPage(),
      routes: {
        '/product_page': (context) => const ProductPage(),
        '/buy_page': (context) => const BuyPage(),
        '/confirm_page': (context) => const MyPayment(),
      },
    );
  }
}
