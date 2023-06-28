
import 'package:flutter/material.dart';

class NextPageWidget extends StatelessWidget {
  String _id;
  String _pw;


  NextPageWidget(this._id, this._pw);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue Scrren'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to my course", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Text("Hi, $_id", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600)),
            SizedBox(height: 50),
          ],
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
