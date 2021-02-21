import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MySecondWidget(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  int _counter = 0;

  MyFirstWidget(){
    print("widget constructor");
  }

  @override
  Widget build(BuildContext context) {
    _counter += 1;
    print("counter: $_counter");
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }

}

class MySecondWidget extends StatefulWidget {
  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();

  MySecondWidget(){
    print("widget constructor");
  }
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int _counter = 0;

  _MySecondWidgetState(){
    print("state constructor");
  }

  @override
  Widget build(BuildContext context) {
    _counter += 1;
    print("counter: $_counter");
    return Container(
      child: Center(
        child: Text('Hello! $getRunTimeType'),
      ),
    );
  }

  Type getRunTimeType() => context.runtimeType;
}
