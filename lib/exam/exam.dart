import 'package:flutter/material.dart';
import 'package:sekolah_id/exam/exam-indo.dart';

import '../core/utils/constant.dart';
import '../core/utils/navigator_helper.dart';

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Exam",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          child: Column(
            children: [
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
                              "PTS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size / 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: TextButton.styleFrom(
                                fixedSize: Size(110, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  70,
                                )),
                                backgroundColor: primaryColor,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10)),
                          )
                        : TextButton(
                            onPressed: () {
                              _index = 0;
                              setState(() {});
                            },
                            child: Text(
                              "PTS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size / 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: TextButton.styleFrom(
                                fixedSize: Size(110, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  70,
                                )),
                                side: BorderSide(width: 2, color: primaryColor),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10)),
                          ),
                    SizedBox(
                      width: 13,
                    ),
                    _index == 1
                        ? TextButton(
                            onPressed: () {
                              _index = 1;
                              setState(() {});
                            },
                            child: Text(
                              "PAT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size / 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: TextButton.styleFrom(
                                fixedSize: Size(110, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  70,
                                )),
                                backgroundColor: primaryColor,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10)),
                          )
                        : TextButton(
                            onPressed: () {
                              _index = 1;
                              setState(() {});
                            },
                            child: Text(
                              "PAT",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size / 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: TextButton.styleFrom(
                                fixedSize: Size(110, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  70,
                                )),
                                side: BorderSide(width: 2, color: primaryColor),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10)),
                          ),
                    SizedBox(
                      width: 13,
                    ),
                    _index == 2
                        ? TextButton(
                            onPressed: () {
                              _index = 2;
                              setState(() {});
                            },
                            child: Text(
                              "PAS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size / 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: TextButton.styleFrom(
                                fixedSize: Size(110, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  70,
                                )),
                                backgroundColor: primaryColor,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10)),
                          )
                        : TextButton(
                            onPressed: () {
                              _index = 2;
                              setState(() {});
                            },
                            child: Text(
                              "PAS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size / 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: TextButton.styleFrom(
                                fixedSize: Size(110, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                  70,
                                )),
                                side: BorderSide(width: 2, color: primaryColor),
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10)),
                          ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextButton(
                onPressed: () {
                  goPush(ExamIndo());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bahasa Indonesia",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      30,
                    )),
                    fixedSize: Size(width, 50),
                    backgroundColor: primaryColor),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PPKN",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      30,
                    )),
                    fixedSize: Size(width, 50),
                    backgroundColor: primaryColor),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bahasa Inggris",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      30,
                    )),
                    fixedSize: Size(width, 50),
                    backgroundColor: primaryColor),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Matematika",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      30,
                    )),
                    fixedSize: Size(width, 50),
                    backgroundColor: primaryColor),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tik",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      30,
                    )),
                    fixedSize: Size(width, 50),
                    backgroundColor: primaryColor),
              ),
              SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "IPA",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      30,
                    )),
                    fixedSize: Size(width, 50),
                    backgroundColor: primaryColor),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
