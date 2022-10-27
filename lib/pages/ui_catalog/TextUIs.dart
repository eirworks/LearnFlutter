import 'package:flutter/material.dart';

class TextUIs extends StatelessWidget {
  const TextUIs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Texts"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text("This is normal text"),
              padding: EdgeInsets.all(5.0),
            ),
            Container(
              child: Text("This is headline 1 text",
                  style: Theme.of(context).textTheme.headline1),
              padding: EdgeInsets.all(5.0),
            ),
            Container(
              child: Text("This is headline 2 text",
                  style: Theme.of(context).textTheme.headline2),
              padding: EdgeInsets.all(5.0),
            ),
            Container(
              child: Text("This is display large text",
                  style: Theme.of(context).textTheme.displayLarge),
              padding: EdgeInsets.all(5.0),
            ),
            Container(
              child: Text("This is display small text",
                  style: Theme.of(context).textTheme.displaySmall),
              padding: EdgeInsets.all(5.0),
            ),
          ],
        ),
      ),
    );
  }
}
