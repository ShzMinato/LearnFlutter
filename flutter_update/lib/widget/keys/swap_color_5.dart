import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_update/widget/keys/stateful_colorful_tile.dart';

import 'stateless_colorful_tile.dart';

class SwapColorDemo5 extends StatefulWidget {
  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo5> {
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      new Padding(
        key: Key(DateTime.now().toIso8601String()),
        padding: const EdgeInsets.all(8.0),
        child: StatefulColorfulTile(key: Key(DateTime.now().toIso8601String())),
      ),
      new Padding(
        key: Key(DateTime.now().toIso8601String()),
        padding: const EdgeInsets.all(26.0),
        child: StatefulColorfulTile(key: Key(DateTime.now().toIso8601String())),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful_padding_with_key'),
      ),
      body: Row(
        children: widgets,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_horiz),
        onPressed: swapTile,
      ),
    );
  }

  swapTile() {
    setState(() {
      widgets.insert(1, widgets.removeAt(0));
    });
  }
}
