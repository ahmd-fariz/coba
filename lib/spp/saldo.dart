import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/navigator_helper.dart';
import 'package:sekolah_id/qr/qr.dart';
import 'package:sekolah_id/spp/history_saldo.dart';
import 'package:sekolah_id/spp/spp.dart';
import 'package:sekolah_id/spp/topup.dart';

import '../core/utils/constant.dart';

class SisaSaldoView extends StatefulWidget {
  const SisaSaldoView({super.key});

  @override
  State<SisaSaldoView> createState() => _SisaSaldoViewState();
}

class _SisaSaldoViewState extends State<SisaSaldoView> {
  history() => showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          goBack();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: size / 20,
                        )),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      "view Transaction",
                      style: TextStyle(
                          fontSize: size / 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction info",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Top up",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jumalah Top-up",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Rp 500.000",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biaya Admin",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "No. Transaksi",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "BX34245899932187",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Metode Transaksi",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/dana.png")),
                            Text(
                              "Dana: 0812*****878",
                              style: TextStyle(
                                  fontSize: size / 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Waktu Transaksi",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "10  April 2022  13;00",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Sisa Saldo",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            goBack();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: size / 20,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                goPush(qr());
              },
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: height / 14,
                width: 350,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/payment.png"),
                    Text(
                      "Sisa Tagihan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size / 23,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Rp.500.000",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size / 23,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  goPush(history());
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  // height: 75,
                  height: height / 11,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "10/04/2022",
                        style: TextStyle(
                            fontSize: size / 40, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 40)),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/dana.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Jumlah Top-up",
                            style: TextStyle(
                                fontSize: size / 26,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Text(
                            "Rp 500.000",
                            style: TextStyle(
                                fontSize: size / 26,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 400,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: height / 16,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: InkWell(
                    onTap: () {
                      goPush(TopUpView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top up",
                          style: TextStyle(
                              fontSize: size / 26,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: size / 25,
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
