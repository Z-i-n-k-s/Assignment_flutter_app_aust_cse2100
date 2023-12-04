import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String? valueChoose;
  List<String> listItems = [
    'Sausage',
    'Mushrooms',
    'Pineapple',
    'Green Peppers'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15, bottom: 5),
      child: Center(
        child: DropdownButton(
          hint: Text('Select toppings'),
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 36,
          isExpanded: true,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          value: valueChoose,
          items: listItems.map(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
          onChanged: (newValue) {
            setState(() {
              valueChoose = newValue;
            });
          },
        ),
      ),
    );
  }
}
