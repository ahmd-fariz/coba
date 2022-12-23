import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';

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