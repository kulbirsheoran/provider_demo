import 'package:flutter/material.dart';

class CounterDemoPage extends StatefulWidget {
  const CounterDemoPage({Key? key}) : super(key: key);

  @override
  State<CounterDemoPage> createState() => _CounterDemoPageState();
}

class _CounterDemoPageState extends State<CounterDemoPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('$count'),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(onPressed: increment, child: const Text("Increment")),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(onPressed: decrement, child: const Text("Decrement"))
            ],
          ),
        ),
      ),
    );
  }

  void increment() {
    count++;
    setState(() {});
  }

  void decrement() {
    count--;
    setState(() {});
  }
}
