import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;

  final Widget child;

  const MyButton({super.key, this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 105, 216, 142),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
        child: child,
      ),
    );
  }
}
