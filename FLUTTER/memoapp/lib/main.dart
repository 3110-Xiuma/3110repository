import 'package:flutter/material.dart';
import 'package:memoapp/write_page.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      "メモ(仮)1",
      "メモ(仮)2",
      "メモ(仮)3",
      "メモ(仮)4",
      "メモ(仮)5",
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('MemoApp'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WritePage()));
          },
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return _Items(list[index]);
          },
        ));
  }

  Widget _Items(String title) {
    return Container(
      decoration: new BoxDecoration(
          border:
              new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        onTap: () {
          print("onTap called.");
        }, // タップ
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}
