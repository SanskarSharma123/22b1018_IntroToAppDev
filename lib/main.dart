import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CounterValue', // Updated app name
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CounterValue'), // Updated app name
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter Value:',
                style: TextStyle(fontSize: 24), // Increased font size
              ),
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 48, // Increased font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: _decrementCounter,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12), // Increased button size
                  textStyle: TextStyle(fontSize: 24), // Increased button text size
                ),
                child: Text('-'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12), // Increased button size
                  textStyle: TextStyle(fontSize: 24), // Increased button text size
                ),
                child: Text('+'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
