import 'package:assignment_app/buttuon.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 248, 222),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(235, 141, 112, 150),
        title: const Text(
          'Product Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(40, 40, 40, 50),
        // padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        width: 300,
        height: 430,
        decoration: BoxDecoration(
          color: Colors.cyan[100],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Name',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'description',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                    onTap: () => Navigator.pushNamed(context, '/buy_page'),
                    child: Text(
                      "Buy Now",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                    )),
              ],
            )
          ],
        ),
      ), // Center
    );
  }
}
