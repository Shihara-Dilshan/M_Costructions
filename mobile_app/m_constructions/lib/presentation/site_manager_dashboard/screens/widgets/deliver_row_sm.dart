import 'package:flutter/material.dart';

class DeliverRowSm extends StatelessWidget {
  const DeliverRowSm({Key? key}) : super(key: key);

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
                child: Text('Check',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
