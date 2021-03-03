import 'package:flutter/material.dart';
import 'package:workshop_codehouse/second_page.dart';

void main() {
  runApp(MyApp());
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  Color baseColor = Colors.blue;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void changeThemeColor() {
    setState(() {
      if ((_counter % 2) == 0) {
        baseColor = Colors.blue;
      } else {
        baseColor = Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: baseColor,
        title: Text("Code house workshop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(this.context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text("Next Page"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: baseColor,
        onPressed: () {
          _incrementCounter();
          changeThemeColor();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
