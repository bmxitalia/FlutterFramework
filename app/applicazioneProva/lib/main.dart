import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Pagina 1"),
                Tab(text: "Pagina 2")
              ]
            ),
            title: Text("Semplice esempio"),
          ),
          body: TabBarView(
            children: [
              FirstPage(title: "Prima pagina"),
              SecondPage(title: "Seconda pagina")
            ]
          ),
        )
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SecondPageState createState() => _SecondPageState();
}

// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.

// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".
class FirstPage extends StatefulWidget {
  FirstPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _counter2 = 0;

  void _decrementCounter() {
    setState(() {
      _counter2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '$_counter2',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: Icon(Icons.remove),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _FirstPageState extends State<FirstPage> {
  int _counter1 = 0;

  void _incrementCounter() {
    setState(() {
      _counter1++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '$_counter1',
          style: Theme.of(context).textTheme.display1,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}