import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/navigator_helper.dart';

class MateriMtkView extends StatefulWidget {
  const MateriMtkView({Key? key}) : super(key: key);

  @override
  State<MateriMtkView> createState() => _MateriMtkViewState();
}

class _MateriMtkViewState extends State<MateriMtkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Materi",
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
          child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: height / 30),
            child: Container(
              height: height / 4,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg-mtk.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height / 4),
            child: Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: height / 30, horizontal: width / 20),
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "23 Januari",
                        style: TextStyle(
                            fontSize: size / 27, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: size / 18,
                      ),
                      Text(
                        "Matematika",
                        style: TextStyle(
                            fontSize: size / 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: size / 10,
                      ),
                      Text(
                        "Definisi Pertidaksamaan Linear",
                        style: TextStyle(
                            fontSize: size / 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: size / 30,
                      ),
                      Text(
                        "Apa yang kalian ketahui menganai pertidaksamaan linear?",
                        style: TextStyle(
                            fontSize: size / 26, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height / 3.6,
                      ),
                    ],
                  )),
            ),
          )
        ],
      )),
    );
  }
}
