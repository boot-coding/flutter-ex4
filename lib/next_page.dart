
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
          children: [
            Text("ID : $_id", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
            Text("pw : $_pw",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
          ],
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
