import 'package:flutter/material.dart';

class CountPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CountClass();
}

class _CountClass extends State<CountPager> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Center(child: _createBody()),
        floatingActionButton: _createButtons());
  }

  Widget _createBody() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello world',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Count: $_count',
            style: TextStyle(fontSize: 20),
          )
        ],
      );

  Widget _createButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _remove,
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            onPressed: _add,
            child: Icon(Icons.add),
          ),
        ],
      );

  void _add() {
    _count++;
    setState(() {});
  }

  void _remove() {
    if (_count > 0) _count--;
    setState(() {});
  }
}
