import 'package:flutter/material.dart';
import 'package:sekolah_id/app/modules/nilai_exam/view/nilai_exam.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/navigator_helper.dart';

class ExamIndo extends StatefulWidget {
  const ExamIndo({super.key});

  @override
  State<ExamIndo> createState() => _ExamIndoState();
}

class _ExamIndoState extends State<ExamIndo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ujian B Indonesia",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Soal 1/25",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Expanded(
                  child: Text(
                    "Gedung-gedung puskesmas pada tingkat kecamatan dan kelurahan di wilayah Jakarta Timur berada dalam kondisi yang tidak baik. Banyak di antara gedung-gedung tersebut bangunannya hampir roboh. Sejumlah 53 puskesmas dari 88 bangunan terhitung rusak. Banyak bangunan puskesmas yang pada bagian kusen dan temboknya mulai retak. Ide pokok / Gagasan utama pada paragraf di atas adalah …",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "a. ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "Bahasa Indonesia",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
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
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "b. ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "Bahasa Indonesia",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
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
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "c. ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "Bahasa Indonesia",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
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
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "e. ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "Bahasa Indonesia",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
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
                  ],
                ),
              ),
              Container(
                height: height / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            fixedSize: Size(115, 55),
                            padding: EdgeInsets.all(10),
                            primary: Colors.white,
                            shadowColor: primaryColor,
                            side: BorderSide(color: primaryColor, width: 1.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          goBack();
                        },
                        child: Text(
                          "Previus",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: primaryColor),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            fixedSize: Size(115, 55),
                            padding: EdgeInsets.all(10),
                            primary: primaryColor,
                            shadowColor: primaryColor,
                            side: BorderSide(color: primaryColor, width: 1.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          goRemove(NilaiExam());
                        },
                        child: Text(
                          "Previus",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
