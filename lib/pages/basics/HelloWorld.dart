import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.blueGrey,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.face,
                size: 60.0,
                color: Colors.lightBlue.shade100,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Hello World",
                style: TextStyle(
                    color: Colors.lightBlue.shade100,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ))),
    );
  }
}
