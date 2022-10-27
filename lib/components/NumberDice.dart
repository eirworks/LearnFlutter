import 'package:flutter/material.dart';

class NumberDice extends StatelessWidget {
  NumberDice({
    Key? key,
    this.number = 1,
  }) : super(key: key);

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: Colors.white, width: 10.0)),
      child: SizedBox(
        width: 100.0,
        height: 200.0,
        child: Center(
            child: Text(
              number.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 80.0),
            )),
      ),
    );
  }
}
