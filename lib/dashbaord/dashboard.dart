import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class dashboardView extends StatefulWidget {
  const dashboardView({Key? key}) : super(key: key);

  @override
  State<dashboardView> createState() => _dashboardViewState();
}

class _dashboardViewState extends State<dashboardView> {
  var _index = 0;

  String? _timeString;

  var timer;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm').format(dateTime);
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffB6B6B6),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                height: height / 6,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style:
                              TextStyle(color: Color(0xff8D8D8D), fontSize: 23),
                        ),
                        Text(
                          "Aqilah Azzahra",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 50,
                        color: Color(0xff0EB7B0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      height: 90,
                      width: width,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor.withOpacity(0.5),
                              blurRadius: 15,
                            )
                          ],
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat("EEEE, d MMMM yyyy")
                                      .format(DateTime.now()),
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Bahasa Indonesia",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Clock",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                SizedBox(height: 3),
                                Text(
                                  _timeString!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.all(10),
                                  primary: Color(0xffFFE458),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    PhosphorIcons.calendarCheckBold,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  Text("Hadir",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        hintStyle: TextStyle(color: Color(0xffB7B7B7)),
                        hintText: 'Cari Mata Pelajaran ....',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          "Mata Pelajaran",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      child: Row(
                        children: [
                          _index == 0
                              ? TextButton(
                                  onPressed: () {
                                    _index = 0;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Materi",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                        70,
                                      )),
                                      backgroundColor: primaryColor,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10)),
                                )
                              : TextButton(
                                  onPressed: () {
                                    _index = 0;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Materi",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                        70,
                                      )),
                                      side: BorderSide(
                                          width: 2, color: primaryColor),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10)),
                                ),
                          SizedBox(width: 10),
                          _index == 0
                              ? TextButton(
                                  onPressed: () {
                                    _index = 1;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Tugas",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                        70,
                                      )),
                                      side: BorderSide(
                                          width: 2, color: primaryColor),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 42, vertical: 10)),
                                )
                              : TextButton(
                                  onPressed: () {
                                    _index = 1;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Tugas",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                        70,
                                      )),
                                      backgroundColor: primaryColor,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 42, vertical: 10)),
                                ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      width: width,
                      height: 140,
                      child: Stack(children: [
                        Positioned(
                          top: 0,
                          right: -1,
                          child: CustomPaint(
                            size: Size(
                                190, (190 * 0.5303867403314917).toDouble()),
                            painter: RPSCustomPainterTop(),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: Container(
                              child: CustomPaint(
                                size: Size(
                                    130, (130 * 0.4230769230769231).toDouble()),
                                painter: RPSCustomPainterBottom(),
                              ),
                            )),
                        Positioned(
                            left: 20,
                            top: 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TIK",
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Fahmi S.Kom",
                                  style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ))
                      ]),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainterTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.176796, size.height * -0.1093750);
    path_0.cubicTo(
        size.width * 1.176796,
        size.height * 0.5033156,
        size.width * 0.9133591,
        size.height,
        size.width * 0.5883978,
        size.height);
    path_0.cubicTo(size.width * 0.2634348, size.height, 0,
        size.height * 0.5033156, 0, size.height * -0.1093750);
    path_0.cubicTo(
        0,
        size.height * -0.7220656,
        size.width * 0.2634348,
        size.height * -1.218750,
        size.width * 0.5883978,
        size.height * -1.218750);
    path_0.cubicTo(
        size.width * 0.9133591,
        size.height * -1.218750,
        size.width * 1.176796,
        size.height * -0.7220656,
        size.width * 1.176796,
        size.height * -0.1093750);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff15C0B9).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterBottom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 1.936364);
    path_0.cubicTo(size.width, size.height * 3.005782, size.width * 0.6332177,
        size.height * 3.872727, size.width * 0.1807692, size.height * 3.872727);
    path_0.cubicTo(
        size.width * -0.2716792,
        size.height * 3.872727,
        size.width * -0.6384615,
        size.height * 3.005782,
        size.width * -0.6384615,
        size.height * 1.936364);
    path_0.cubicTo(size.width * -0.6384615, size.height * 0.8669400,
        size.width * -0.2716792, 0, size.width * 0.1807692, 0);
    path_0.cubicTo(size.width * 0.6332177, 0, size.width,
        size.height * 0.8669400, size.width, size.height * 1.936364);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff00AEA7).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
