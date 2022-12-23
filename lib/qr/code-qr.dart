import 'package:flutter/material.dart';

import '../app/core/utils/constant.dart';
import '../app/core/utils/navigator_helper.dart';


class CodeQr extends StatelessWidget {
  const CodeQr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Kode Qr",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            goBack();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 50)),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "assets/images/qr-code.png",
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: Size(250, 55),
                  padding: EdgeInsets.all(10),
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                goPush(CodeQr());
              },
              child: Text(
                "Pay",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )),
        ],
      ),
    );
  }
}
