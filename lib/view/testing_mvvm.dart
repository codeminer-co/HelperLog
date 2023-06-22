import 'package:flutter/material.dart';

class MVVMTesting extends StatefulWidget {
  const MVVMTesting({super.key});

  @override
  State<MVVMTesting> createState() => _MVVMTestingState();
}

class _MVVMTestingState extends State<MVVMTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Welcome to the MVVM architecture Screen"),
          Text("Something description"),
        ],
      ),
    );
  }
}
