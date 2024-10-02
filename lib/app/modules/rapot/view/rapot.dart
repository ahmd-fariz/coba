import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';

class Rapot extends StatefulWidget {
  const Rapot({super.key});

  @override
  State<Rapot> createState() => _RapotState();
}

class _RapotState extends State<Rapot> {
  var index = 0;
  bool visible = true;
  final List mapel = [
    'Matematika',
    'IPA',
    'Bahasa Indonesia',
    'Bahasa Inggris',
    'PPKN',
    'TIK'
  ];
  final List kkm = ['80', '80', '75', '70', '85', '70'];
  final List nilai = ['90', '86', '73', '75', '88', '70'];
  final List rapot = [
    'Rapot 2022/2023',
    'Rapot 2021/2022',
    'Rapot 2020/2021',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              index == 0
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rapot 2022/2023",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: () {
                                  index = 1;
                                  setState(() {});
                                },
                                icon: Icon(Icons.arrow_drop_down))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Nama",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "Aqillah Azzahra",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "kelas",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "X RPL",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                width: 374,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(color: primaryColor)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Mata Pelajaran",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "KKM",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Text(
                                          "Nilai",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 500,
                                child: ListView.builder(
                                  itemCount: mapel.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          width: 374,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color(0xffEFF8F7),
                                              border: Border.all(
                                                  color: primaryColor)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                mapel[index],
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    kkm[index],
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    width: 50,
                                                  ),
                                                  Text(
                                                    nilai[index],
                                                    style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rapot 2022/2023",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: () {
                                  index = 0;
                                  setState(() {});
                                },
                                icon: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Nama",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "Aqillah Azzahra",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "kelas",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Text(
                                    "X RPL",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        index = 0;
                                        setState(() {});
                                      },
                                      child: Text(
                                        rapot[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          fixedSize: Size(375, 60),
                                          padding: EdgeInsets.all(10),
                                          backgroundColor: Color(0xffEFF8F7),
                                          side: BorderSide(color: primaryColor),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        index = 0;
                                        setState(() {});
                                      },
                                      child: Text(
                                        rapot[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          fixedSize: Size(375, 60),
                                          padding: EdgeInsets.all(10),
                                          backgroundColor: Color(0xffEFF8F7),
                                          side: BorderSide(color: primaryColor),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        index = 0;
                                        setState(() {});
                                      },
                                      child: Text(
                                        rapot[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          fixedSize: Size(375, 60),
                                          padding: EdgeInsets.all(10),
                                          backgroundColor: Color(0xffEFF8F7),
                                          side: BorderSide(color: primaryColor),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
