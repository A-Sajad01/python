import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('see what i can do'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('center of center'),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 100.0),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('click'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    ));
