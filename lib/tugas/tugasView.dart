import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:sekolah_id/core/utils/navigator_helper.dart';
import 'package:sekolah_id/tugas/tugas-indo.dart';
import 'package:sekolah_id/tugas/tugas-ipa.dart';
import 'package:sekolah_id/tugas/tugas-mtk.dart';
import 'package:sekolah_id/tugas/tugas-ppkn.dart';

class TugasView extends StatefulWidget {
  const TugasView({super.key});

  @override
  State<TugasView> createState() => _TugasViewState();
}

class _TugasViewState extends State<TugasView> {
  final List image = [Image.asset("")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Tugas",
          style: TextStyle(fontSize: size / 20, color: Colors.black),
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  filled: true,
                  hintText: "Cari Mata Tugas......",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  goPush(TugasIndo());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: height / 5.6,
                  width: width / 1.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg-indo.jpg"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black54, BlendMode.darken),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Buatlah Teks Deskripsi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Bahasa Indonesia",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height / 55,
                      ),
                      Text(
                        "7h 90mins",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              GestureDetector(
                onTap: () {
                  goPush(TugasIpa());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: height / 5.6,
                  width: width / 1.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg-ipa.jpg"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black54, BlendMode.darken),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sebutkan Organ Tubuh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ipa",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height / 55,
                      ),
                      Text(
                        "7h 90mins",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              GestureDetector(
                onTap: () {
                  goPush(TugasPPKN());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: height / 5.6,
                  width: width / 1.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg-pkn.jpg"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black54, BlendMode.darken),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ancaman Terhadap Negara",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "PPKN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height / 55,
                      ),
                      Text(
                        "7h 90mins",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              GestureDetector(
                onTap: () {
                  goPush(TugasMtk());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: height / 5.6,
                  width: width / 1.1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg-mtk.jpeg"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black54, BlendMode.darken),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Baris Aritmatika",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Matematika",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height / 55,
                      ),
                      Text(
                        "7h 90mins",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size / 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
