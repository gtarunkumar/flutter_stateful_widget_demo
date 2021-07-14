import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Stateful Widget Demo'),
      debugShowCheckedModeBanner: false,
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
  List<String> _qns=[ "What is your Name?", "What is your age?", "Where are you from?" ] ;
  List<MaterialAccentColor> _clr =[Colors.amberAccent,Colors.lightBlueAccent,Colors.tealAccent];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    if(_counter>=3)
    {
      _counter=0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: _clr[_counter],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _qns[_counter],

              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: _counter==2 ?
              Text("Start again",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),) :
              Text("Next",style:
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
              ),

            ),
          ],
        ),
      ),

    );
  }
}
