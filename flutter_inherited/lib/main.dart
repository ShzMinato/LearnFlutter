import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "InheritedWidget",
      ),
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
  CenterWidget centerWidget;

  @override
  void initState() {
    super.initState();
    centerWidget = new CenterWidget();
  }

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
      body: MyInheritedWidget(centerWidget, _counter),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  final int count;

  MyInheritedWidget(Widget child, this.count) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('CenterWidget');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextDescWidget(),
          TextCounterWidget(),
        ],
      ),
    );
  }
}

class TextDescWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('TextDescWidget');
    return Text(
      'You have pushed the button this many times:',
    );
  }
}

class TextCounterWidget extends StatefulWidget {
  @override
  _TextCounterWidgetState createState() => _TextCounterWidgetState();
}

class _TextCounterWidgetState extends State<TextCounterWidget> {
  @override
  Widget build(BuildContext context) {
    print('TextCounterWidget');
    return Text(
      '${context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>().count}',
      style: Theme.of(context).textTheme.display1,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}
