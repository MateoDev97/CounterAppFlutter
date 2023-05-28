import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    if (counter >= 1) {
      counter--;
      setState(() {});
    }
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          elevation: 5.0,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Number of clicks', style: fontSize),
                Text('$counter', style: fontSize)
              ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActions(
            increaseFunc: increase,
            decreaseFunc: decrease,
            restartFunc: restart));
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFunc;
  final Function decreaseFunc;
  final Function restartFunc;

  const CustomFloatingActions(
      {super.key,
      required this.increaseFunc,
      required this.decreaseFunc,
      required this.restartFunc});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              decreaseFunc();
            }),
        FloatingActionButton(
            child: const Icon(Icons.restore),
            onPressed: () {
              restartFunc();
            }),
        FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () {
              increaseFunc();
            })
      ],
    );
  }
}
