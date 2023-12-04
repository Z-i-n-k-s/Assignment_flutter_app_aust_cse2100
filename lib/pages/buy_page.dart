import 'package:assignment_app/components/buttuon.dart';
import 'package:assignment_app/components/dropdown.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 248, 222),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 133, 190, 139),
        title: const Text(
          'Buy Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                child: const Text(
                  'Your Selections',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                // padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                width: 350,
                height: 150,

                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Row(
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 150,
                          width: 100,
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: AspectRatio(
                                aspectRatio: 2 / 2.25,
                                child: Image.asset(
                                  'assets/pizza.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          margin: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Text(
                              "Pepperoni\nPizza",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          child: Center(
                            child: Text(
                              "Price\n\$280",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 10),
                child: const Text(
                  'Choose Toppings',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 255, 194),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: MyDropDown(),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                child: const Text(
                  'Choose Payment Method',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    height: 80,
                    width: 300,
                    child: MyButton(
                      onTap: () =>
                          Navigator.pushNamed(context, '/confirm_page'),
                      child: Center(
                        child: Image.asset(
                          'assets/bkash.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    height: 80,
                    width: 300,
                    child: MyButton(
                      onTap: () =>
                          Navigator.pushNamed(context, '/confirm_page'),
                      child: Center(
                        child: Image.asset(
                          'assets/paypal.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.amber,
                    height: 80,
                    width: 300,
                    child: MyButton(
                      onTap: () =>
                          Navigator.pushNamed(context, '/confirm_page'),
                      child: Center(
                        child: Image.asset(
                          'assets/visa.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
