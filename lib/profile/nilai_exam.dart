import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:sekolah_id/login/signup.dart';

class NilaiExam extends StatefulWidget {
  const NilaiExam({super.key});

  @override
  State<NilaiExam> createState() => _NilaiExamState();
}

class _NilaiExamState extends State<NilaiExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/question.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jumlah Soal",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "25",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/time.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Waktu",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "60 Menit",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              alignment: Alignment.center,
              height: 205,
              width: 205,
              decoration: BoxDecoration(color: Colors.transparent ),
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return SweepGradient(
                              startAngle: 0.0,
                              endAngle: 3.14 * 2,
                              stops: [1.0, 1.0],
                              center: Alignment.center,
                              colors: [primaryColor, Colors.transparent])
                          .createShader(rect);
                    },
                    child: Container(
                      width: 205,
                      height: 205,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 165,
                      height: 165,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 20)),
                            Text(
                              "100",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Point",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              children: [
                Text(
                  "25",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Sekor Kamu:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 105,
              width: 370,
              decoration: BoxDecoration(
                color: Color(0xff15C0B9).withOpacity(0.17),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "25",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Benar",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Salah",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Kosong",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
