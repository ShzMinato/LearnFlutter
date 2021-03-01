import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Color(0xffDF8344).withOpacity(0.5));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SwapColorDemo1(), //Stateless
      // home: SwapColorDemo2(), //stateful without key
      // home: SwapColorDemo3(), //stateful with key
      // home: SwapColorDemo4(), //padding without key
      // home: SwapColorDemo5(), //padding  key
    );
  }
}
