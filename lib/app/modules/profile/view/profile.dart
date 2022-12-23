import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:sekolah_id/app/modules/personal_info/view/personal_info.dart';
import 'package:sekolah_id/app/modules/rapot/view/rapot.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/navigator_helper.dart';
import '../../nilai_exam/view/nilai_exam.dart';

class profileView extends StatefulWidget {
  const profileView({Key? key}) : super(key: key);

  @override
  State<profileView> createState() => _profileViewState();
}

class _profileViewState extends State<profileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Profil",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
              padding: EdgeInsets.only(left: 30, bottom: 30),
              // height: bodyHeight * 0.22,
              height: height / 5,
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: primaryColor,
                      backgroundImage: AssetImage("assets/images/avatar.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 35,
                        )),
                        Text(
                          "Nama",
                          style: TextStyle(
                              fontSize: size / 22, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Aqilah Azzahra",
                          style: TextStyle(
                              fontSize: size / 22, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Container(
              padding: EdgeInsets.only(top: 50),
              // height: bodyHeight * 0.72,
              height: height / 1.4,
              width: width,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  // PERSONAL INFO
                  Container(
                    height: height / 12,
                    width: width / 1.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 9,
                            offset: Offset(0, 10),
                          ),
                        ]),
                    child: TextButton(
                        // style: TextButton.styleFrom(
                        //     backgroundColor: Colors.white),
                        onPressed: () {
                          goPush(PersonalInfo());
                        },
                        child: Text(
                          "Personal Info",
                          style: TextStyle(
                              color: Colors.black,
                              // fontSize: 20,
                              fontSize: size / 19,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  // NILAI EXAM
                  Container(
                    height: height / 12,
                    width: width / 1.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 9,
                            offset: Offset(0, 10),
                          ),
                        ]),
                    child: TextButton(
                        // style: TextButton.styleFrom(
                        //     backgroundColor: Colors.white),
                        onPressed: () {
                          goPush(NilaiExam());
                        },
                        child: Text(
                          "Nilai Exam",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size / 19,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  // RAPOT
                  Container(
                    height: height / 12,
                    width: width / 1.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 9,
                            offset: Offset(0, 10),
                          ),
                        ]),
                    child: TextButton(
                        // style: TextButton.styleFrom(
                        //     backgroundColor: Colors.white),
                        onPressed: () {
                          goPush(Rapot());
                        },
                        child: Text(
                          "Rapot",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size / 19,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  // LOGOUT
                  Container(
                    height: height / 12,
                    width: width / 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 9,
                            offset: Offset(0, 10),
                          ),
                        ]),
                    child: TextButton(
                        // style: TextButton.styleFrom(
                        //     backgroundColor: Colors.white),
                        onPressed: () {},
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size / 19,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
