import 'package:flutter/material.dart';

class ButtonUIs extends StatelessWidget {
  const ButtonUIs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Text Button"),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: const TextButton(
                  onPressed: null, // NULL is only way to make button disabled
                  child: Text("Disabled Text Button"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Elevated Button"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text("Disabled Button"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Outlined Button"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: const OutlinedButton(
                  onPressed: null,
                  child: Text("Disabled Outlined Button"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Outlined Button",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Outlined Button",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Outlined Button",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
