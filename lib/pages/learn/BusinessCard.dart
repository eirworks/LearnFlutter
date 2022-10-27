import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  final String phone = "081-123-456-789";
  final String email = "gerald.rivia@witcher.org";
  final String name = "Gerald of Rivia";
  final String bio = "I kill monster for coins";

  void copyToClipboard(context, String data) {
    Clipboard.setData(ClipboardData(text: data));

    SnackBar snackbar = const SnackBar(
      content: Text("Text copied!"),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void showSnackBar(BuildContext context, String text) {
    SnackBar snackbar = SnackBar(
      content: Text(text),
      duration: Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images/gerald.jpeg"),
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 40.0, fontFamily: "Playfair", color: Colors.white),
          ),
          Text(
            bio,
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Montserrat",
                color: Colors.teal.shade100),
          ),
          SizedBox(
            height: 20.0,
            width: 100.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.teal),
              title: Text(phone),
              trailing: GestureDetector(
                child: Icon(Icons.copy),
                onTap: () {
                  copyToClipboard(context, phone);
                },
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: ListTile(
              leading: Icon(Icons.email, color: Colors.teal),
              title: Text(email),
              trailing: GestureDetector(
                child: Icon(Icons.copy),
                onTap: () {
                  copyToClipboard(context, email);
                },
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Currently not available for work", style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),),
              ),
              color: Colors.grey,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red.shade400),
              padding: MaterialStateProperty.all(EdgeInsets.all(30.0)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)))
              )
            ),
            child: Text(
              "Order My Service",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Row(
              children: [
                Expanded(child: ElevatedButton(child: Text("OnlyFans"), onPressed: () {
                  showSnackBar(context, "You pervert!");
                },)),
                SizedBox(width: 5.0,),
                Expanded(child: ElevatedButton(child: Text("LinkedIn"), onPressed: () {
                  showSnackBar(context, "My professional monster-killing portfolio");
                },)),
                SizedBox(width: 5.0,),
                Expanded(child: ElevatedButton(child: Text("Twitter"), onPressed: () {
                  showSnackBar(context, "I like to interact with fans");
                },)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
