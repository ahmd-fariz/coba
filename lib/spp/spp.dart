import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:sekolah_id/core/utils/navigator_helper.dart';
import 'package:sekolah_id/spp/history_saldo.dart';
import 'package:sekolah_id/spp/saldo.dart';

class sppView extends StatefulWidget {
  const sppView({Key? key}) : super(key: key);

  @override
  State<sppView> createState() => _sppViewState();
}

class _sppViewState extends State<sppView> {
  history() => showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: height / 1.4,
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
                          size: size / 22,
                        )),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      "SPP Agustus 2022",
                      style: TextStyle(
                          fontSize: size / 22, fontWeight: FontWeight.w600),
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
                          "Nama Siswa",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          ":",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Aqilah Azzahra",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "No Registsrasi Siswa",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          ":",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "000020259924",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kelas",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        // SizedBox(
                        //   width: 2,
                        // ),
                        Text(
                          ":",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "X RPL",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tahun Ajaran",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ":",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "2022/2023",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Keterangan",
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Nominal",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: size / 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bulan Agustus 2022",
                          style: TextStyle(
                              fontSize: size / 30,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7A7A7A)),
                        ),
                        Text(
                          "700.000",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: size / 30,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7A7A7A)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pilih Metode Pembayaran",
                            style: TextStyle(
                                fontSize: size / 25,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jumlah",
                          style: TextStyle(
                            fontSize: size / 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Rp.700.000",
                          style: TextStyle(
                            fontSize: size / 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                          onPressed: () {
                            goBack();
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: size / 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Pembayaran SPP",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        ),
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
                  children: [
                    Image.asset("assets/images/payment.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Sisa Tagihan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size / 24,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "Rp.1.900.000",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size / 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: height / 14,
                  width: 350,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextButton(
                    onPressed: () {
                      goPush(SisaSaldoView());
                    },
                    child: Row(
                      children: [
                        Image.asset("assets/images/payment.png"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Sisa Saldo",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 24,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          "Rp.500.000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                height: height / 7.5,
                width: 350,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: (() {
                    goPush(history());
                  }),
                  child: Row(
                    children: [
                      Image.asset("assets/images/payment2.png"),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SPP September 2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size / 22,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rp.700.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size / 30,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Lunas",
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontSize: size / 35,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
