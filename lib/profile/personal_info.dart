import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:sekolah_id/core/utils/navigator_helper.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Personal Info",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: 35),
            onPressed: () {
              goBack();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 20,
              )),
              CircleAvatar(
                radius: 50,
                backgroundColor: primaryColor,
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(color: Colors.grey, fontSize: size / 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      height: 80,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            color: primaryColor,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Aqilah Azzahra",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 22,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email ID",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size / 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      height: 80,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(children: [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "aqilahazz@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 22,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "No Telp",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size / 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      height: 80,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(children: [
                        Icon(
                          Icons.call_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "+62 823 8934 6738",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 22,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Tanggal Lahir",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size / 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      height: 80,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "08 Mei 20000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 22,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size / 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      height: 80,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(children: [
                        Icon(
                          Icons.woman_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Perempuan",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 22,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
    ;
  }
}
