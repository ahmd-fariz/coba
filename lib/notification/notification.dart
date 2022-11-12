import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../core/utils/constant.dart';
import '../core/utils/navigator_helper.dart';

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
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Notifikasi",
          style: TextStyle(
              fontSize: size / 20,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              goBack();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: size / 20,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            )),
      ),
    );
  }
}
