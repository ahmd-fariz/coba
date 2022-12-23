import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sekolah_id/app/modules/exam/view/exam.dart';
import 'package:sekolah_id/app/modules/jadwal/view/jadwal.dart';
import 'package:sekolah_id/app/modules/mata_pelajaran/view/mata-pelajaran.dart';
import 'package:sekolah_id/app/modules/materi/mapel-matematika/view/mapel-mtk.dart';
import 'package:sekolah_id/app/modules/nilai_exam/view/nilai_exam.dart';
import 'package:sekolah_id/app/modules/tugas/tugas-ipa/view/tugas-ipa.dart';
import 'package:sekolah_id/app/modules/tugas/tugas-matematika/view/tugas-mtk.dart';
import 'package:sekolah_id/app/modules/tugas/tugasView.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/navigator_helper.dart';
import '../../tugas/tugas-indonesia/view/tugas-indo.dart';

class bookView extends StatefulWidget {
  const bookView({Key? key}) : super(key: key);

  @override
  State<bookView> createState() => _bookViewState();
}

class _bookViewState extends State<bookView> {
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Buku",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                goPush(Jadwal());
              },
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mata Pelajaran",
                    style: TextStyle(
                        fontSize: size / 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      goPush(MataPelajaran());
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: size / 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size / 40,
              ),
              Container(
                width: width / 1.1,
                height: height / 6.5,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      goPush(MapelMtk());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: width / 4.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Image.asset("assets/images/mtk.png"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "MTK",
                            style: TextStyle(fontSize: size / 27),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 25,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: width / 4.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Image.asset("assets/images/ipa.png"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "IPA",
                            style: TextStyle(fontSize: size / 27),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 25,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: width / 4.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Image.asset("assets/images/tik.png"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "TIK",
                            style: TextStyle(fontSize: size / 27),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 25,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: width / 4.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Image.asset("assets/images/tik.png"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "IPS",
                            style: TextStyle(fontSize: size / 27),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: size / 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tugas",
                    style: TextStyle(
                        fontSize: size / 20, fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      goPush(TugasView());
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: size / 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size / 40,
              ),
              Container(
                height: 145,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  GestureDetector(
                    onTap: () {
                      goPush(TugasIndo());
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: width / 3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height / 11,
                            width: width / 3,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/bg-indo.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Buatlah Teks Deskripsi",
                            style: TextStyle(
                                fontSize: size / 30,
                                fontWeight: FontWeight.w700),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "B. Indonesia",
                            style: TextStyle(
                                fontSize: size / 40,
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "7h 90mins",
                            style: TextStyle(
                                fontSize: size / 40,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffB0B0B0)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      goPush(TugasIpa());
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: width / 3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height / 11,
                            width: width / 3,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/bg-ipa.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Sebutkan Oragan Tubuh",
                            style: TextStyle(
                                fontSize: size / 30,
                                fontWeight: FontWeight.w700),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Ipa",
                            style: TextStyle(
                                fontSize: size / 40,
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "5h 60mins",
                            style: TextStyle(
                                fontSize: size / 40,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffB0B0B0)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      goPush(TugasMtk());
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: width / 3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height / 11,
                            width: width / 3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/bg-mtk.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "baris Arimatika",
                            style: TextStyle(
                                fontSize: size / 30,
                                fontWeight: FontWeight.w700),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Matematika",
                            style: TextStyle(
                                fontSize: size / 40,
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "2h 60mins",
                            style: TextStyle(
                                fontSize: size / 45,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffB0B0B0)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: size / 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exam",
                    style: TextStyle(
                        fontSize: size / 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      goPush(Exam());
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: size / 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size / 40,
              ),
              Container(
                height: height / 6,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: width / 4.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            height: height / 10,
                            width: width / 5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/exam.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: height / 85,
                          ),
                          Text(
                            "PTS",
                            style: TextStyle(
                                fontSize: size / 30,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: width / 4.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            height: height / 10,
                            width: width / 5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/exam.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: height / 85,
                          ),
                          Text(
                            "PAT",
                            style: TextStyle(
                                fontSize: size / 30,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: width / 4.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            height: height / 10,
                            width: width / 5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/exam.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: height / 85,
                          ),
                          Text(
                            "PAS",
                            style: TextStyle(
                                fontSize: size / 30,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
