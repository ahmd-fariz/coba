import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sekolah_id/qr/code-qr.dart';

import '../app/core/utils/constant.dart';
import '../app/core/utils/navigator_helper.dart';

class qr extends StatefulWidget {
  const qr({super.key});

  @override
  State<qr> createState() => _qrState();
}

class _qrState extends State<qr> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 30),
        child: Column(
          children: [
            Container(
              height: 330,
              width: 330,
              decoration: BoxDecoration(color: Colors.greenAccent),
              child: QRView(
                key: _gLobalkey,
                onQRViewCreated: qr,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Arahkan Kameramu ke kode QR",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xFF323535)),
                  ),
                  Text(
                    "atau Barcode untuk scan",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xFF323535)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: Size(80, 80),
                      padding: EdgeInsets.all(10),
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/scan.png",
                        width: 2000,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: Size(80, 80),
                      padding: EdgeInsets.all(10),
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    goPush(CodeQr());
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/scan2.png",
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
