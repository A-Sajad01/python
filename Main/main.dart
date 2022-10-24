import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //use MaterialApp() widget like this
        home: ninja() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}

class Ali extends StatelessWidget {
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      Tab(text: 'LEFT'),
      Tab(text: 'RIGHT'),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            final String label = tab.text!.toLowerCase();
            return Center(
              child: Text(
                'This is the $label tab',
                style: const TextStyle(fontSize: 36),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ninja extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('see what i can do'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.bottomLeft,
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black12,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
