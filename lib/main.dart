// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/register_page.dart';
import 'package:login/signin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Demo',
      home: MyHomePage(title: 'Firebase Auth Demo'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: RaisedButton(
              color: Colors.red,
              child: const Text(
                'SIGN IN USER',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _pushPage(context, SignInPage()),
            ),
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
          ),
          Container(
            child: RaisedButton(
              color: Colors.orange,
              child: const Text(
                'REGISTER USER',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => _pushPage(context, RegisterPage()),
            ),
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
