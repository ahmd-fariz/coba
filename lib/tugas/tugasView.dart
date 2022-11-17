import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:sekolah_id/core/utils/navigator_helper.dart';
import 'package:sekolah_id/list-book/mata-pelajaran.dart';
import 'package:sekolah_id/tugas/tugas-indo.dart';
import 'package:sekolah_id/tugas/tugas-ipa.dart';
import 'package:sekolah_id/tugas/tugas-mtk.dart';
import 'package:sekolah_id/tugas/tugas-ppkn.dart';

import '../core/utils/tugas_modal.dart';

class TugasView extends StatefulWidget {
  final index;
  const TugasView({super.key, this.index});

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
              Container(
                height: height,
                child: TugasModal(
                  index: index,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
