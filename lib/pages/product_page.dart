import 'package:assignment_app/components/buttuon.dart';
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
        height: 515,
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
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Pepperoni Pizza',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'The combination of pepperoni, tomato sauce and cheese creates an amazing sensation unlike anything else',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Price : ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '\$280',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () => Navigator.pushNamed(context, '/buy_page'),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ), // Center
    );
  }
}
