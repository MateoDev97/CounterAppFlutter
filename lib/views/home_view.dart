import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        elevation: 10.0,
      ),
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Number of clicks', style: fontSize),
              Text('10', style: fontSize)
            ]),
      ), 
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        print("Hello world");
      }),
    );
  }
}
