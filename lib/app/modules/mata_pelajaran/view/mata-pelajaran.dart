import 'package:flutter/material.dart';
import 'package:sekolah_id/app/modules/materi/mapel-matematika/view/mapel-mtk.dart';
import 'package:sekolah_id/qr/qr.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/navigator_helper.dart';
import '../../../shared/materi_modal.dart';

class MataPelajaran extends StatefulWidget {
  const MataPelajaran({super.key});

  @override
  State<MataPelajaran> createState() => _MataPelajaranState();
}

final index = 0;

class _MataPelajaranState extends State<MataPelajaran> {
  final List mapel = [
    'Matematika',
    'TIK',
    'IPA',
    'Bahasa Inggris',
    'PPKN',
  ];
  final List guru = [
    'yayah, S.pd, S,Kom, S.H, S.Ked ',
    'Fahmi S.Kom',
    'Iqro Negoro S,pd',
    'Didik Nurul S,pd',
    'Abdul Majid S.pd'
  ];
  List pages = [MapelMtk()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Mata Pelajaran",
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
      body: Container(
        padding: EdgeInsets.only(
            left: width / 20, right: width / 20, top: width / 20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(left: width / 20, right: width / 20),
                filled: true,
                hintText: "Cari Mata Pelajaran......",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: SingleChildScrollView(child: MateriModal())),
          ],
        ),
      ),
    );
  }
}
