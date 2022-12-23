// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sekolah_id/app/modules/mata_pelajaran/view/mata-pelajaran.dart';
import 'package:sekolah_id/app/modules/tugas/tugas-ipa/view/tugas-ipa.dart';
import 'package:sekolah_id/app/modules/tugas/tugas-matematika/view/tugas-mtk.dart';
import 'package:sekolah_id/app/modules/tugas/tugas-ppkn/view/tugas-ppkn.dart';
import '../core/utils/constant.dart';
import '../core/utils/navigator_helper.dart';
import '../modules/tugas/tugas-indonesia/view/tugas-indo.dart';

class TugasModal extends StatefulWidget {
  final int index;

  const TugasModal({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<TugasModal> createState() => _TugasModalState();
}

class _TugasModalState extends State<TugasModal> {
  final List pages = [
    TugasIndo(),
    TugasIpa(),
    TugasMtk(),
    TugasPPKN(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 2.70,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    goPush(pages[index]);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    height: height / 5.5,
                    // height: 130,
                    width: width / 1.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(tugass[index].image),
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.black54, BlendMode.darken),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          tugass[index].judul,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size / 20,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          tugass[index].mapel,
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
                  height: 20,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class tugas {
  final String judul;
  final String mapel;
  final String image;
  tugas({
    required this.judul,
    required this.mapel,
    required this.image,
  });
}

List<tugas> tugass = [
  tugas(
    judul: "Buatlah Teks Deskripsi",
    mapel: "Bahas Indonesia",
    image: "assets/images/bg-indo.jpg",
  ),
  tugas(
    judul: "Sebutkan Organ Tubuh",
    mapel: "IPA",
    image: "assets/images/bg-ipa.jpg",
  ),
  tugas(
    judul: "Baris Aritmatika",
    mapel: "Matematika",
    image: "assets/images/bg-mtk.jpeg",
  ),
  tugas(
    judul: "Ancaman Terhadap Negara",
    mapel: "PPKN",
    image: "assets/images/bg-pkn.jpg",
  )
];
