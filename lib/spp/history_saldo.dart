import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:sekolah_id/core/utils/navigator_helper.dart';

class HistorySaldoView extends StatefulWidget {
  const HistorySaldoView({super.key});

  @override
  State<HistorySaldoView> createState() => _HistorySaldoViewState();
}

class _HistorySaldoViewState extends State<HistorySaldoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(color: primaryColor),
          ),
        ],
      ),
    );
  }
}
