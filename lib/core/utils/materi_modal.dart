import 'package:flutter/Material.dart';

import 'constant.dart';
import 'custom_path.dart';
import '../../mapel/mapel-mtk.dart';

class MateriModal extends StatefulWidget {
  const MateriModal({super.key});

  @override
  State<MateriModal> createState() => _MateriModalState();
}

class _MateriModalState extends State<MateriModal> {
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
    return Container(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: mapel.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: height / 6.5,
                  width: width / 1.1,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(children: [
                    Positioned(
                      child: ClipPath(
                        clipper: CustumPathBottom(),
                        child: Container(
                          height: 130,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color(0xff00AEA7),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                        ),
                      ),
                    ),
                    Positioned(
                      child: ClipPath(
                        clipper: CustumPathTop(),
                        child: Container(
                          height: height / 5,
                          width: width / 1,
                          decoration: BoxDecoration(
                              color: Color(0xff15C0B9),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 17,
                      top: height / 55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mapel[index],
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            guru[index],
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ]),
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
