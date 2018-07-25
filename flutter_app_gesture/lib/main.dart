import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double hg = 50.0;
  double wd = 50.0;

  click(){
    _counter++;
    print('Clicked times: $_counter');
    setState(() {
      hg = hg + 50.0;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body:
          new GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: click,
            child: new Container(
              color: Colors.grey,
              width: wd,
              height: hg,
              //color: Colors.transparent,
            ),
          )
    );
  }
}