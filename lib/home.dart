import 'package:flutter/material.dart';

class HomePager extends StatelessWidget {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello world',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Count: $count',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Count++ $count');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
