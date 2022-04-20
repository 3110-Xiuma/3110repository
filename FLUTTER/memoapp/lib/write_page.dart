// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('メモ作成')),
      body: Container(
          width: double.infinity,
          child: Column(
            children: [
              TextField(
                autofocus: true,
              ),
              RaisedButton(
                child: Text('保存'),
                onPressed: () {},
              )
            ],
          )),
    );
    // TODO: implement build
    //throw UnimplementedError();
    //画面遷移作ってるところ
  }
}
