import 'package:flutter/material.dart';
import 'package:sekolah_id/app/modules/login/view/login.dart';
import 'package:sekolah_id/app/modules/tugas/tugasView.dart';

import 'app/core/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Jakarta'),
      navigatorKey: navigatorKey,
      home: Login(),
    );
  }
}
