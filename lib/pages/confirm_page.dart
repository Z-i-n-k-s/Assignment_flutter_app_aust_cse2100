import 'package:assignment_app/components/buttuon.dart';
import 'package:flutter/material.dart';

class MyPayment extends StatelessWidget {
  const MyPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(235, 151, 224, 200),
        title: const Text(
          'Payment Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.amber,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/paydone.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                  onTap: () => Navigator.pushNamed(context, '/product_page'),
                  child: const Text(
                    "Go Back",
                    style: TextStyle(
                      color: Color.fromARGB(255, 24, 23, 23),
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
