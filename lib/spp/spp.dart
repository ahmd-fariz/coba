import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class sppView extends StatefulWidget {
  const sppView({Key? key}) : super(key: key);

  @override
  State<sppView> createState() => _sppViewState();
}

class _sppViewState extends State<sppView> {
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
