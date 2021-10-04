import 'package:flutter/material.dart';

class DeliveryRow extends StatelessWidget {
  const DeliveryRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            height: 40,
            child: Center(child: Text('Item')),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            child: Center(child: Text('Quantity')),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            child: Center(
                child: Icon(
              Icons.check_box,
              color: Colors.amber,
            )),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}