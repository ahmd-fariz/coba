import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class bookView extends StatefulWidget {
  const bookView({Key? key}) : super(key: key);

  @override
  State<bookView> createState() => _bookViewState();
}

class _bookViewState extends State<bookView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
