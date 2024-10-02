import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constant.dart';
import '../../../core/utils/navigator_helper.dart';

class Jadwal extends StatefulWidget {
  @override
  State<Jadwal> createState() => _JadwalState();
}

class _JadwalState extends State<Jadwal> {
  var _index = 0;
  final List mapel = [
    'Matematika',
    'Bahasa Indonesia',
    'IPA',
    'PPKN',
    'Bahasa Inggris'
  ];
  final List jam = [
    '07.00 - 08.00',
    '08.00 - 09.00',
    '09.00 - 10.00',
    '10.00 - 11.00',
    '12.30 - 14.00'
  ];
  final List guru = [
    'yayah, S.pd, S,Kom, S.H, S.Ked ',
    'Didik Nurul S.Pd',
    'Gusmul S.Pd',
    'Abdul Majid S.Pd',
    'Iqro Negoro S.Pd'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Jadwal",
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
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: width,
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _index == 0
                      ? ElevatedButton(
                          onPressed: () {
                            _index = 0;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffA6F3EB),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _index = 0;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffEFF8F7),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                  SizedBox(
                    width: 20,
                  ),
                  _index == 1
                      ? ElevatedButton(
                          onPressed: () {
                            _index = 1;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffA6F3EB),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _index = 1;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffEFF8F7),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                  SizedBox(
                    width: 20,
                  ),
                  _index == 2
                      ? ElevatedButton(
                          onPressed: () {
                            _index = 2;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffA6F3EB),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _index = 2;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffEFF8F7),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                  SizedBox(
                    width: 20,
                  ),
                  _index == 3
                      ? ElevatedButton(
                          onPressed: () {
                            _index = 3;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffA6F3EB),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _index = 3;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffEFF8F7),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                  SizedBox(
                    width: 20,
                  ),
                  _index == 4
                      ? ElevatedButton(
                          onPressed: () {
                            _index = 4;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffA6F3EB),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _index = 4;
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              fixedSize: Size(width / 16, height / 16),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xffEFF8F7),
                              side: BorderSide(color: Color(0xff0EB7B0)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: mapel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 20, right: 15),
                      height: 120,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xff0EB7B0), width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                mapel[index],
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                jam[index],
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            guru[index],
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
