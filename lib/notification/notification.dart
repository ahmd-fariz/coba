import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class notificationView extends StatefulWidget {
  const notificationView({Key? key}) : super(key: key);

  @override
  State<notificationView> createState() => _notificationViewState();
}

class _notificationViewState extends State<notificationView> {
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
